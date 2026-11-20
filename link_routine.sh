#!/usr/bin/env bash
set -e
REPO="warmmlmory/tribalrink"
TAG="hidden-forest-frosty-forest"
LIB="wide-box.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ main.cpp "$LIB" -pthread -O2 -std=c++17 -o app && ./app

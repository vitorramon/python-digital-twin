#!/bin/bash

if [ -x "$(command -v pyenv)" ]; then
    echo "Pyenv OK!"
else
    echo "Install pyenv"
    exit 1
fi

result=$(pyenv versions | grep " 3.11.2" -c)

if [ $result -eq 0 ]; then
    pyenv install 3.11.2
fi

pyenv local 3.11.2

# docker compose up -d
docker compose up

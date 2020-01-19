#!/bin/bash

source /etc/profile

cd $(cd "$(dirname "$0")";pwd)
git pull

shopt -s expand_aliases
alias php='/usr/local/php/bin/php'
. ./start-ci.sh

git add -A adblock-for-dnsmasq.conf origin-files/*
git commit -am "auto commit. script output--- $PHP_RET"
git push --force

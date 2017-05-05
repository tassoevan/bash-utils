#!/bin/bash

if [ -t 0 ]; then
  mv "$@"
else
  cat - | while read path
  do
    mv "$path" "$@"
  done
fi

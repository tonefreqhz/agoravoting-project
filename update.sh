#!/bin/bash

cd repos

for i in $(ls)
do
    cd $i
    echo ""
    echo "UPDATING $i"
    git checkout next
    git pull
    git checkout master
    git pull
    cd ..
done

cd ..

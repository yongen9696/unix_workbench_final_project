#!/usr/bin/env bash

function guessinggame(){
    no_of_files=$(pwd | ls | wc -l)
    while true;
    do
        echo "pleas enter your guess"
        read -r number
        if [ "$number" -lt "$no_of_files" ]
        then
            echo "Your guess is less than the number of files"
        elif [ "$number" -gt "$no_of_files" ]
        then
            echo "Your guess is more than the number of files"
        else
            echo "Hooray, you got it right!"
        break;
        fi
    done
}

echo "How many files are there in current directory?"
guessinggame
.RECIPEPREFIX = >
# .PHONY: clean

ifeq ($(shell uname),Linux)
    RM = del
else
    RM = rm -f
endif


all: which_system create_script run_script

which_system:
> echo "Operating System ID is $(RM)"

clean:
> rm -f *.app

create_script: clean
> echo "echo Hello script" > test_script.app

run_script:
> bash test_script.app
SHELL=/bin/bash -o pipefail

JSONNET_FILES=$(shell find . -name '*.libsonnet') 

.PHONY: fmt
fmt: $(JSONNET_FILES)
	jsonnetfmt -i $^
	

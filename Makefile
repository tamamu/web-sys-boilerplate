
all: index.js

index.js: src/*.rs
	cargo +nightly build --target wasm32-unknown-unknown
	wasm-bindgen target/wasm32-unknown-unknown/debug/rustwasm_boilerplate.wasm --out-dir .

serve:
	npm run serve

deploy:
	npx webpack

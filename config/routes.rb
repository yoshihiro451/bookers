Rails.application.routes.draw do

  # get '/' => 'info#index'
    root "root#top"
    
	post "/posts" => "posts#create"
	get '/posts' => 'posts#index', as: "index"
	patch '/posts/:id' => 'posts#update', as: 'update_post'
	get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'
	delete '/posts/:id' => 'posts#destroy', as: 'destroy_post'
	get "/posts/:id" => "posts#show", as: "post"




end
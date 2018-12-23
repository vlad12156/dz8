Rails.application.routes.draw do
  devise_for :clients
  devise_for :users
  get 'persons/profile'

  root 'posts#index', as: 'home'

  get 'persons/profile', as: 'user_root'

  get 'about' => 'pages#about', as: 'about'

  resources :posts do
    resources :comments
 end
end

class User < ActiveRecord::Base
  	has_secure_password

  	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  	validates :name, :presence => true
  	validates :cohort, :presence => true

  	validates :email, presence: true, uniqueness: { case_sensitive:false }, format: { with: EMAIL_REGEX }
  	validates :invitecode, presence: == "tacocat"

end

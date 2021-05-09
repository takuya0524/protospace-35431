class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :prototype_id
      t.text :text
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

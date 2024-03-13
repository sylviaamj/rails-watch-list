class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview

      t.timestamps
    end
    add_index :movies, :title, unique: true
  end
end

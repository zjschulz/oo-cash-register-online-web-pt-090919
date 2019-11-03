<<<<<<< HEAD
require 'pry'

class CashRegister

=======
class CashRegister

>>>>>>> 1c5d38cd042e0d276827df6b6f952980efb935c1
  attr_accessor :total, :last_trans
  attr_reader :discount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, qty = 1)
    self.total += (price * qty)
<<<<<<< HEAD
    self.last_trans = (price * qty)
    while qty > 0 
      @items << title
      qty -= 1
=======
    self.last_trans = self.total
    while qty > 0 
      @items << title
      qty -= 1 
>>>>>>> 1c5d38cd042e0d276827df6b6f952980efb935c1
    end
  end
 
  def apply_discount
    if @discount > 0
      "After the discount, the total comes to $#{@total -= @discount * 10}."
    else
      "There is no discount to apply."
    end
  end
 
 def items
  @items
 end
 
 def void_last_transaction
<<<<<<< HEAD
  self.total -= self.last_trans
=======
   
>>>>>>> 1c5d38cd042e0d276827df6b6f952980efb935c1
 end
 
end
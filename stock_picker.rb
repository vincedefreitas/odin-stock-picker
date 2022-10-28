def stock_picker(prices)
    profit = 0
    best_days = [0, 0]
    holding_price = prices[0]
    holding_index = 0

    prices.each_with_index do |price, index|

        if holding_price > price
            holding_price = price
            holding_index = index
            next
        end

        if price - holding_price > profit
            profit = price - holding_price
            best_days[0] = holding_index
            best_days[1] = index
        end

    end

    best_days

end

p stock_picker([17,3,6,9,15,8,6,1,10])
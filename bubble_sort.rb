def unsorted?(array) 
    array.each_with_index do |item, index|
        return true if array[index+1] != nil && array[index] > array[index+1] 
    end
    return false
end

def bubble_sort(array)
    while unsorted?(array)
        array.each_with_index do |item, index|
            if array[index+1] != nil && array[index] > array[index+1]
                temp = array[index]
                array[index] = array[index+1]
                array[index+1] = temp
            end
        end
    end
    puts array
end

bubble_sort([4,3,78,2,0,2])

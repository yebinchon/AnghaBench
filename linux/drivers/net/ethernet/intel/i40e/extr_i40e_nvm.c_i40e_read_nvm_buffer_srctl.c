
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct i40e_hw {int dummy; } ;
typedef scalar_t__ i40e_status ;


 scalar_t__ i40e_read_nvm_word_srctl (struct i40e_hw*,size_t,size_t*) ;

__attribute__((used)) static i40e_status i40e_read_nvm_buffer_srctl(struct i40e_hw *hw, u16 offset,
           u16 *words, u16 *data)
{
 i40e_status ret_code = 0;
 u16 index, word;


 for (word = 0; word < *words; word++) {
  index = offset + word;
  ret_code = i40e_read_nvm_word_srctl(hw, index, &data[word]);
  if (ret_code)
   break;
 }


 *words = word;

 return ret_code;
}

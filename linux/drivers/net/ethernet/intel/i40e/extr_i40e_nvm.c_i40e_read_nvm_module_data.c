
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
typedef scalar_t__ i40e_status ;


 int I40E_DEBUG_ALL ;
 scalar_t__ I40E_ERR_BAD_PTR ;
 scalar_t__ I40E_ERR_NVM ;
 int I40E_NVM_INVALID_PTR_VAL ;
 int I40E_NVM_INVALID_VAL ;
 int I40E_PTR_TYPE ;
 int I40E_RESOURCE_READ ;
 scalar_t__ i40e_acquire_nvm (struct i40e_hw*,int ) ;
 scalar_t__ i40e_aq_read_nvm (struct i40e_hw*,int ,int,int,int*,int,int *) ;
 int i40e_debug (struct i40e_hw*,int ,char*,scalar_t__) ;
 scalar_t__ i40e_read_nvm_buffer (struct i40e_hw*,int,int*,int*) ;
 scalar_t__ i40e_read_nvm_word (struct i40e_hw*,scalar_t__,int*) ;
 int i40e_release_nvm (struct i40e_hw*) ;

i40e_status i40e_read_nvm_module_data(struct i40e_hw *hw,
          u8 module_ptr, u16 offset,
          u16 words_data_size,
          u16 *data_ptr)
{
 i40e_status status;
 u16 ptr_value = 0;
 u32 flat_offset;

 if (module_ptr != 0) {
  status = i40e_read_nvm_word(hw, module_ptr, &ptr_value);
  if (status) {
   i40e_debug(hw, I40E_DEBUG_ALL,
       "Reading nvm word failed.Error code: %d.\n",
       status);
   return I40E_ERR_NVM;
  }
 }




 if (ptr_value == 0x7FFF ||
     ptr_value == 0xFFFF)
  return I40E_ERR_BAD_PTR;


 if (ptr_value & I40E_PTR_TYPE) {

  ptr_value &= ~I40E_PTR_TYPE;


  ptr_value /= 2;
  flat_offset = ((u32)ptr_value * 0x1000) + (u32)offset;
  status = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
  if (!status) {
   status = i40e_aq_read_nvm(hw, 0, 2 * flat_offset,
        2 * words_data_size,
        data_ptr, 1, ((void*)0));
   i40e_release_nvm(hw);
   if (status) {
    i40e_debug(hw, I40E_DEBUG_ALL,
        "Reading nvm aq failed.Error code: %d.\n",
        status);
    return I40E_ERR_NVM;
   }
  } else {
   return I40E_ERR_NVM;
  }
 } else {

  status = i40e_read_nvm_buffer(hw, ptr_value + offset,
           &words_data_size, data_ptr);
  if (status) {
   i40e_debug(hw, I40E_DEBUG_ALL,
       "Reading nvm buffer failed.Error code: %d.\n",
       status);
  }
 }

 return status;
}

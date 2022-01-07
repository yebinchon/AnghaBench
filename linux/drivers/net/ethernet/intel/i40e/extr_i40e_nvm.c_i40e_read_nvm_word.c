
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_hw {int flags; } ;
typedef scalar_t__ i40e_status ;


 int I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK ;
 int I40E_RESOURCE_READ ;
 scalar_t__ __i40e_read_nvm_word (struct i40e_hw*,int ,int *) ;
 scalar_t__ i40e_acquire_nvm (struct i40e_hw*,int ) ;
 int i40e_release_nvm (struct i40e_hw*) ;

i40e_status i40e_read_nvm_word(struct i40e_hw *hw, u16 offset,
          u16 *data)
{
 i40e_status ret_code = 0;

 if (hw->flags & I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK)
  ret_code = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
 if (ret_code)
  return ret_code;

 ret_code = __i40e_read_nvm_word(hw, offset, data);

 if (hw->flags & I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK)
  i40e_release_nvm(hw);

 return ret_code;
}

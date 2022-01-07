
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_hw {int flags; } ;
typedef int i40e_status ;


 int I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE ;
 int i40e_read_nvm_word_aq (struct i40e_hw*,int ,int *) ;
 int i40e_read_nvm_word_srctl (struct i40e_hw*,int ,int *) ;

__attribute__((used)) static i40e_status __i40e_read_nvm_word(struct i40e_hw *hw,
     u16 offset, u16 *data)
{
 if (hw->flags & I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE)
  return i40e_read_nvm_word_aq(hw, offset, data);

 return i40e_read_nvm_word_srctl(hw, offset, data);
}

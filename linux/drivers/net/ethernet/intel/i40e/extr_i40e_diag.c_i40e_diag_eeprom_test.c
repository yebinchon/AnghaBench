
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_hw {int dummy; } ;
typedef int i40e_status ;


 int BIT (int ) ;
 int I40E_ERR_DIAG_TEST_FAILED ;
 int I40E_SR_CONTROL_WORD_1_MASK ;
 int I40E_SR_CONTROL_WORD_1_SHIFT ;
 int I40E_SR_NVM_CONTROL_WORD ;
 int i40e_read_nvm_word (struct i40e_hw*,int ,int*) ;
 int i40e_validate_nvm_checksum (struct i40e_hw*,int *) ;

i40e_status i40e_diag_eeprom_test(struct i40e_hw *hw)
{
 i40e_status ret_code;
 u16 reg_val;


 ret_code = i40e_read_nvm_word(hw, I40E_SR_NVM_CONTROL_WORD, &reg_val);
 if (!ret_code &&
     ((reg_val & I40E_SR_CONTROL_WORD_1_MASK) ==
      BIT(I40E_SR_CONTROL_WORD_1_SHIFT)))
  return i40e_validate_nvm_checksum(hw, ((void*)0));
 else
  return I40E_ERR_DIAG_TEST_FAILED;
}

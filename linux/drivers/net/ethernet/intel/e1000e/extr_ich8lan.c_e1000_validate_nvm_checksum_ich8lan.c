
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int NVM_COMPAT ;
 int NVM_COMPAT_VALID_CSUM ;
 int NVM_FUTURE_INIT_WORD1 ;
 int NVM_FUTURE_INIT_WORD1_VALID_CSUM ;



 scalar_t__ e1000_read_nvm (struct e1000_hw*,int,int,int*) ;
 scalar_t__ e1000_write_nvm (struct e1000_hw*,int,int,int*) ;
 scalar_t__ e1000e_update_nvm_checksum (struct e1000_hw*) ;
 scalar_t__ e1000e_validate_nvm_checksum_generic (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 data;
 u16 word;
 u16 valid_csum_mask;






 switch (hw->mac.type) {
 case 129:
 case 128:
 case 130:
  word = NVM_COMPAT;
  valid_csum_mask = NVM_COMPAT_VALID_CSUM;
  break;
 default:
  word = NVM_FUTURE_INIT_WORD1;
  valid_csum_mask = NVM_FUTURE_INIT_WORD1_VALID_CSUM;
  break;
 }

 ret_val = e1000_read_nvm(hw, word, 1, &data);
 if (ret_val)
  return ret_val;

 if (!(data & valid_csum_mask)) {
  data |= valid_csum_mask;
  ret_val = e1000_write_nvm(hw, word, 1, &data);
  if (ret_val)
   return ret_val;
  ret_val = e1000e_update_nvm_checksum(hw);
  if (ret_val)
   return ret_val;
 }

 return e1000e_validate_nvm_checksum_generic(hw);
}

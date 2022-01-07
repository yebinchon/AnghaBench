
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_nvm_info {scalar_t__ type; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef scalar_t__ s32 ;


 scalar_t__ e1000_nvm_flash_hw ;
 scalar_t__ e1000_read_nvm (struct e1000_hw*,int,int,int*) ;
 scalar_t__ e1000_write_nvm (struct e1000_hw*,int,int,int*) ;
 scalar_t__ e1000e_update_nvm_checksum (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_fix_nvm_checksum_82571(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 s32 ret_val;
 u16 data;

 if (nvm->type != e1000_nvm_flash_hw)
  return 0;




 ret_val = e1000_read_nvm(hw, 0x10, 1, &data);
 if (ret_val)
  return ret_val;

 if (!(data & 0x10)) {







  ret_val = e1000_read_nvm(hw, 0x23, 1, &data);
  if (ret_val)
   return ret_val;

  if (!(data & 0x8000)) {
   data |= 0x8000;
   ret_val = e1000_write_nvm(hw, 0x23, 1, &data);
   if (ret_val)
    return ret_val;
   ret_val = e1000e_update_nvm_checksum(hw);
   if (ret_val)
    return ret_val;
  }
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {int (* read ) (struct e1000_hw*,scalar_t__,int,scalar_t__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ nvm; } ;
typedef int s32 ;


 int E1000_ERR_NVM ;
 scalar_t__ NVM_CHECKSUM_REG ;
 scalar_t__ NVM_SUM ;
 int hw_dbg (char*) ;
 int stub1 (struct e1000_hw*,scalar_t__,int,scalar_t__*) ;

s32 igb_validate_nvm_checksum(struct e1000_hw *hw)
{
 s32 ret_val = 0;
 u16 checksum = 0;
 u16 i, nvm_data;

 for (i = 0; i < (NVM_CHECKSUM_REG + 1); i++) {
  ret_val = hw->nvm.ops.read(hw, i, 1, &nvm_data);
  if (ret_val) {
   hw_dbg("NVM Read Error\n");
   goto out;
  }
  checksum += nvm_data;
 }

 if (checksum != (u16) NVM_SUM) {
  hw_dbg("NVM Checksum Invalid\n");
  ret_val = -E1000_ERR_NVM;
  goto out;
 }

out:
 return ret_val;
}

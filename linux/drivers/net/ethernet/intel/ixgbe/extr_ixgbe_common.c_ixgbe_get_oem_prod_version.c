
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ixgbe_nvm_version {int oem_valid; int oem_major; int oem_minor; int oem_release; } ;
struct TYPE_3__ {int (* read ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;


 int NVM_INVALID_PTR ;
 int NVM_OEM_PROD_VER_CAP_MASK ;
 int NVM_OEM_PROD_VER_CAP_OFF ;
 int NVM_OEM_PROD_VER_MOD_LEN ;
 int NVM_OEM_PROD_VER_OFF_H ;
 int NVM_OEM_PROD_VER_OFF_L ;
 int NVM_OEM_PROD_VER_PTR ;
 int NVM_VER_INVALID ;
 int NVM_VER_MASK ;
 int NVM_VER_SHIFT ;
 int stub1 (struct ixgbe_hw*,int,int*) ;
 int stub2 (struct ixgbe_hw*,int,int*) ;
 int stub3 (struct ixgbe_hw*,int,int*) ;
 int stub4 (struct ixgbe_hw*,int,int*) ;
 int stub5 (struct ixgbe_hw*,int,int*) ;

void ixgbe_get_oem_prod_version(struct ixgbe_hw *hw,
    struct ixgbe_nvm_version *nvm_ver)
{
 u16 rel_num, prod_ver, mod_len, cap, offset;

 nvm_ver->oem_valid = 0;
 hw->eeprom.ops.read(hw, NVM_OEM_PROD_VER_PTR, &offset);


 if (offset == 0x0 || offset == NVM_INVALID_PTR)
  return;


 hw->eeprom.ops.read(hw, offset, &mod_len);
 hw->eeprom.ops.read(hw, offset + NVM_OEM_PROD_VER_CAP_OFF, &cap);


 if (mod_len != NVM_OEM_PROD_VER_MOD_LEN ||
     (cap & NVM_OEM_PROD_VER_CAP_MASK) != 0x0)
  return;

 hw->eeprom.ops.read(hw, offset + NVM_OEM_PROD_VER_OFF_L, &prod_ver);
 hw->eeprom.ops.read(hw, offset + NVM_OEM_PROD_VER_OFF_H, &rel_num);


 if ((rel_num | prod_ver) == 0x0 ||
     rel_num == NVM_VER_INVALID || prod_ver == NVM_VER_INVALID)
  return;

 nvm_ver->oem_major = prod_ver >> NVM_VER_SHIFT;
 nvm_ver->oem_minor = prod_ver & NVM_VER_MASK;
 nvm_ver->oem_release = rel_num;
 nvm_ver->oem_valid = 1;
}

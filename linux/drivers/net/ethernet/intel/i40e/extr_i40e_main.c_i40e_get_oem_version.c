
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int oem_ver; int eetrack; } ;
struct i40e_hw {TYPE_1__ nvm; } ;


 int I40E_NVM_OEM_CAPABILITIES_MASK ;
 scalar_t__ I40E_NVM_OEM_CAPABILITIES_OFFSET ;
 scalar_t__ I40E_NVM_OEM_GEN_OFFSET ;
 int I40E_NVM_OEM_LENGTH ;
 scalar_t__ I40E_NVM_OEM_LENGTH_OFFSET ;
 scalar_t__ I40E_NVM_OEM_RELEASE_OFFSET ;
 int I40E_OEM_EETRACK_ID ;
 int I40E_OEM_SNAP_SHIFT ;
 scalar_t__ I40E_SR_NVM_OEM_VERSION_PTR ;
 int i40e_read_nvm_word (struct i40e_hw*,scalar_t__,int*) ;

__attribute__((used)) static void i40e_get_oem_version(struct i40e_hw *hw)
{
 u16 block_offset = 0xffff;
 u16 block_length = 0;
 u16 capabilities = 0;
 u16 gen_snap = 0;
 u16 release = 0;
 i40e_read_nvm_word(hw, 0x1B, &block_offset);
 if (block_offset == 0xffff)
  return;


 i40e_read_nvm_word(hw, block_offset + 0x00,
      &block_length);
 if (block_length < 3)
  return;


 i40e_read_nvm_word(hw, block_offset + 0x01,
      &capabilities);
 if ((capabilities & 0x000F) != 0)
  return;

 i40e_read_nvm_word(hw, block_offset + 0x02,
      &gen_snap);
 i40e_read_nvm_word(hw, block_offset + 0x03,
      &release);
 hw->nvm.oem_ver = (gen_snap << I40E_OEM_SNAP_SHIFT) | release;
 hw->nvm.eetrack = I40E_OEM_EETRACK_ID;
}

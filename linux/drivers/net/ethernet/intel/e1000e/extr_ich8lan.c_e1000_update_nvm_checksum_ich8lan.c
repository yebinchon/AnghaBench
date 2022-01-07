
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_6__ {int (* reload ) (struct e1000_hw*) ;int (* release ) (struct e1000_hw*) ;int (* acquire ) (struct e1000_hw*) ;} ;
struct e1000_nvm_info {scalar_t__ type; scalar_t__ flash_bank_size; TYPE_3__ ops; } ;
struct e1000_dev_spec_ich8lan {TYPE_2__* shadow_ram; } ;
struct TYPE_4__ {struct e1000_dev_spec_ich8lan ich8lan; } ;
struct e1000_hw {TYPE_1__ dev_spec; struct e1000_nvm_info nvm; } ;
typedef scalar_t__ s32 ;
struct TYPE_5__ {int modified; int value; } ;


 scalar_t__ E1000_ICH8_SHADOW_RAM_WORDS ;
 int E1000_ICH_NVM_SIG_MASK ;
 scalar_t__ E1000_ICH_NVM_SIG_WORD ;
 scalar_t__ e1000_erase_flash_bank_ich8lan (struct e1000_hw*,int) ;
 scalar_t__ e1000_nvm_flash_sw ;
 scalar_t__ e1000_read_flash_word_ich8lan (struct e1000_hw*,scalar_t__,int*) ;
 scalar_t__ e1000_retry_write_flash_byte_ich8lan (struct e1000_hw*,scalar_t__,int ) ;
 scalar_t__ e1000_valid_nvm_bank_detect_ich8lan (struct e1000_hw*,scalar_t__*) ;
 scalar_t__ e1000e_update_nvm_checksum_generic (struct e1000_hw*) ;
 int e_dbg (char*,...) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 e1000_update_nvm_checksum_ich8lan(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 struct e1000_dev_spec_ich8lan *dev_spec = &hw->dev_spec.ich8lan;
 u32 i, act_offset, new_bank_offset, old_bank_offset, bank;
 s32 ret_val;
 u16 data = 0;

 ret_val = e1000e_update_nvm_checksum_generic(hw);
 if (ret_val)
  goto out;

 if (nvm->type != e1000_nvm_flash_sw)
  goto out;

 nvm->ops.acquire(hw);





 ret_val = e1000_valid_nvm_bank_detect_ich8lan(hw, &bank);
 if (ret_val) {
  e_dbg("Could not detect valid bank, assuming bank 0\n");
  bank = 0;
 }

 if (bank == 0) {
  new_bank_offset = nvm->flash_bank_size;
  old_bank_offset = 0;
  ret_val = e1000_erase_flash_bank_ich8lan(hw, 1);
  if (ret_val)
   goto release;
 } else {
  old_bank_offset = nvm->flash_bank_size;
  new_bank_offset = 0;
  ret_val = e1000_erase_flash_bank_ich8lan(hw, 0);
  if (ret_val)
   goto release;
 }
 for (i = 0; i < E1000_ICH8_SHADOW_RAM_WORDS; i++) {
  if (dev_spec->shadow_ram[i].modified) {
   data = dev_spec->shadow_ram[i].value;
  } else {
   ret_val = e1000_read_flash_word_ich8lan(hw, i +
        old_bank_offset,
        &data);
   if (ret_val)
    break;
  }
  if (i == E1000_ICH_NVM_SIG_WORD)
   data |= E1000_ICH_NVM_SIG_MASK;


  act_offset = (i + new_bank_offset) << 1;

  usleep_range(100, 200);

  ret_val = e1000_retry_write_flash_byte_ich8lan(hw,
              act_offset,
              (u8)data);
  if (ret_val)
   break;

  usleep_range(100, 200);
  ret_val = e1000_retry_write_flash_byte_ich8lan(hw,
              act_offset + 1,
              (u8)(data >> 8));
  if (ret_val)
   break;
 }




 if (ret_val) {

  e_dbg("Flash commit failed.\n");
  goto release;
 }






 act_offset = new_bank_offset + E1000_ICH_NVM_SIG_WORD;
 ret_val = e1000_read_flash_word_ich8lan(hw, act_offset, &data);
 if (ret_val)
  goto release;

 data &= 0xBFFF;
 ret_val = e1000_retry_write_flash_byte_ich8lan(hw,
             act_offset * 2 + 1,
             (u8)(data >> 8));
 if (ret_val)
  goto release;






 act_offset = (old_bank_offset + E1000_ICH_NVM_SIG_WORD) * 2 + 1;
 ret_val = e1000_retry_write_flash_byte_ich8lan(hw, act_offset, 0);
 if (ret_val)
  goto release;


 for (i = 0; i < E1000_ICH8_SHADOW_RAM_WORDS; i++) {
  dev_spec->shadow_ram[i].modified = 0;
  dev_spec->shadow_ram[i].value = 0xFFFF;
 }

release:
 nvm->ops.release(hw);




 if (!ret_val) {
  nvm->ops.reload(hw);
  usleep_range(10000, 11000);
 }

out:
 if (ret_val)
  e_dbg("NVM update error: %d\n", ret_val);

 return ret_val;
}

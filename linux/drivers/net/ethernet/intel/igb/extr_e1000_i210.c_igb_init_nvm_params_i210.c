
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * update; int * validate; int * write; int read; int valid_led_default; int release; int acquire; } ;
struct e1000_nvm_info {TYPE_1__ ops; int type; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef int s32 ;


 int e1000_nvm_flash_hw ;
 int e1000_nvm_invm ;
 int igb_acquire_nvm_i210 ;
 scalar_t__ igb_get_flash_presence_i210 (struct e1000_hw*) ;
 int igb_read_invm_i210 ;
 int igb_read_nvm_srrd_i210 ;
 int igb_release_nvm_i210 ;
 int * igb_update_nvm_checksum_i210 ;
 int igb_valid_led_default_i210 ;
 int * igb_validate_nvm_checksum_i210 ;
 int * igb_write_nvm_srwr_i210 ;

s32 igb_init_nvm_params_i210(struct e1000_hw *hw)
{
 s32 ret_val = 0;
 struct e1000_nvm_info *nvm = &hw->nvm;

 nvm->ops.acquire = igb_acquire_nvm_i210;
 nvm->ops.release = igb_release_nvm_i210;
 nvm->ops.valid_led_default = igb_valid_led_default_i210;


 if (igb_get_flash_presence_i210(hw)) {
  hw->nvm.type = e1000_nvm_flash_hw;
  nvm->ops.read = igb_read_nvm_srrd_i210;
  nvm->ops.write = igb_write_nvm_srwr_i210;
  nvm->ops.validate = igb_validate_nvm_checksum_i210;
  nvm->ops.update = igb_update_nvm_checksum_i210;
 } else {
  hw->nvm.type = e1000_nvm_invm;
  nvm->ops.read = igb_read_invm_i210;
  nvm->ops.write = ((void*)0);
  nvm->ops.validate = ((void*)0);
  nvm->ops.update = ((void*)0);
 }
 return ret_val;
}

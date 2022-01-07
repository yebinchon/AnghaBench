
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * update; int * validate; int * write; int read; int release; int acquire; } ;
struct igc_nvm_info {TYPE_1__ ops; int type; } ;
struct igc_hw {struct igc_nvm_info nvm; } ;
typedef int s32 ;


 int igc_acquire_nvm_i225 ;
 scalar_t__ igc_get_flash_presence_i225 (struct igc_hw*) ;
 int igc_nvm_flash_hw ;
 int igc_nvm_invm ;
 int igc_read_nvm_eerd ;
 int igc_read_nvm_srrd_i225 ;
 int igc_release_nvm_i225 ;
 int * igc_update_nvm_checksum_i225 ;
 int * igc_validate_nvm_checksum_i225 ;
 int * igc_write_nvm_srwr_i225 ;

s32 igc_init_nvm_params_i225(struct igc_hw *hw)
{
 struct igc_nvm_info *nvm = &hw->nvm;

 nvm->ops.acquire = igc_acquire_nvm_i225;
 nvm->ops.release = igc_release_nvm_i225;


 if (igc_get_flash_presence_i225(hw)) {
  hw->nvm.type = igc_nvm_flash_hw;
  nvm->ops.read = igc_read_nvm_srrd_i225;
  nvm->ops.write = igc_write_nvm_srwr_i225;
  nvm->ops.validate = igc_validate_nvm_checksum_i225;
  nvm->ops.update = igc_update_nvm_checksum_i225;
 } else {
  hw->nvm.type = igc_nvm_invm;
  nvm->ops.read = igc_read_nvm_eerd;
  nvm->ops.write = ((void*)0);
  nvm->ops.validate = ((void*)0);
  nvm->ops.update = ((void*)0);
 }
 return 0;
}

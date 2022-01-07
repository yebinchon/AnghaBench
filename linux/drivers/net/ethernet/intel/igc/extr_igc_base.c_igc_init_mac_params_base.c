
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int setup_physical_interface; int release_swfw_sync; int acquire_swfw_sync; int reset_hw; } ;
struct igc_mac_info {int mta_reg_count; scalar_t__ type; TYPE_1__ ops; int rar_entry_count; } ;
struct igc_dev_spec_base {int clear_semaphore_once; } ;
struct TYPE_4__ {struct igc_dev_spec_base _base; } ;
struct igc_hw {struct igc_mac_info mac; TYPE_2__ dev_spec; } ;
typedef int s32 ;


 int IGC_RAR_ENTRIES ;
 int igc_acquire_swfw_sync_i225 ;
 scalar_t__ igc_i225 ;
 int igc_release_swfw_sync_i225 ;
 int igc_reset_hw_base ;
 int igc_setup_copper_link_base ;

__attribute__((used)) static s32 igc_init_mac_params_base(struct igc_hw *hw)
{
 struct igc_dev_spec_base *dev_spec = &hw->dev_spec._base;
 struct igc_mac_info *mac = &hw->mac;


 mac->mta_reg_count = 128;
 mac->rar_entry_count = IGC_RAR_ENTRIES;


 mac->ops.reset_hw = igc_reset_hw_base;

 mac->ops.acquire_swfw_sync = igc_acquire_swfw_sync_i225;
 mac->ops.release_swfw_sync = igc_release_swfw_sync_i225;


 if (mac->type == igc_i225)
  dev_spec->clear_semaphore_once = 1;


 mac->ops.setup_physical_interface = igc_setup_copper_link_base;

 return 0;
}

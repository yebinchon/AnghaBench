
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {void* blink_led; void* led_on; void* check_mng_mode; void* set_lan_id; void* get_link_up_info; int check_for_link; void* setup_physical_interface; } ;
struct e1000_mac_info {int mta_reg_count; int adaptive_ifs; int type; int has_fwsm; int arc_subsystem_valid; TYPE_4__ ops; int rar_entry_count; } ;
struct TYPE_11__ {scalar_t__ smb_counter; } ;
struct TYPE_12__ {TYPE_5__ e82571; } ;
struct TYPE_9__ {int media_type; } ;
struct e1000_hw {TYPE_6__ dev_spec; struct e1000_mac_info mac; TYPE_3__ phy; TYPE_2__* adapter; } ;
typedef int s32 ;
struct TYPE_8__ {TYPE_1__* pdev; } ;
struct TYPE_7__ {int device; } ;
 int E1000_FWSM_MODE_MASK ;
 int E1000_RAR_ENTRIES ;
 int E1000_SWSM2_LOCK ;
 int E1000_SWSM_SMBI ;
 int FWSM ;
 int SWSM ;
 int SWSM2 ;





 int e1000_check_for_serdes_link_82571 ;
 void* e1000_check_mng_mode_82574 ;
 void* e1000_led_on_82574 ;
 int e1000_media_type_copper ;
 int e1000_media_type_fiber ;
 int e1000_media_type_internal_serdes ;
 void* e1000_set_lan_id_single_port ;
 void* e1000_setup_copper_link_82571 ;
 void* e1000_setup_fiber_serdes_link_82571 ;
 void* e1000e_blink_led_generic ;
 int e1000e_check_for_copper_link ;
 int e1000e_check_for_fiber_link ;
 void* e1000e_check_mng_mode_generic ;
 void* e1000e_get_speed_and_duplex_copper ;
 void* e1000e_get_speed_and_duplex_fiber_serdes ;
 void* e1000e_led_on_generic ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static s32 e1000_init_mac_params_82571(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 swsm = 0;
 u32 swsm2 = 0;
 bool force_clear_smbi = 0;


 switch (hw->adapter->pdev->device) {
 case 139:
 case 134:
 case 138:
  hw->phy.media_type = e1000_media_type_fiber;
  mac->ops.setup_physical_interface =
      e1000_setup_fiber_serdes_link_82571;
  mac->ops.check_for_link = e1000e_check_for_fiber_link;
  mac->ops.get_link_up_info =
      e1000e_get_speed_and_duplex_fiber_serdes;
  break;
 case 137:
 case 136:
 case 135:
 case 133:
  hw->phy.media_type = e1000_media_type_internal_serdes;
  mac->ops.setup_physical_interface =
      e1000_setup_fiber_serdes_link_82571;
  mac->ops.check_for_link = e1000_check_for_serdes_link_82571;
  mac->ops.get_link_up_info =
      e1000e_get_speed_and_duplex_fiber_serdes;
  break;
 default:
  hw->phy.media_type = e1000_media_type_copper;
  mac->ops.setup_physical_interface =
      e1000_setup_copper_link_82571;
  mac->ops.check_for_link = e1000e_check_for_copper_link;
  mac->ops.get_link_up_info = e1000e_get_speed_and_duplex_copper;
  break;
 }


 mac->mta_reg_count = 128;

 mac->rar_entry_count = E1000_RAR_ENTRIES;

 mac->adaptive_ifs = 1;


 switch (hw->mac.type) {
 case 130:
  mac->ops.set_lan_id = e1000_set_lan_id_single_port;
  mac->ops.check_mng_mode = e1000e_check_mng_mode_generic;
  mac->ops.led_on = e1000e_led_on_generic;
  mac->ops.blink_led = e1000e_blink_led_generic;


  mac->has_fwsm = 1;



  mac->arc_subsystem_valid = !!(er32(FWSM) &
           E1000_FWSM_MODE_MASK);
  break;
 case 129:
 case 128:
  mac->ops.set_lan_id = e1000_set_lan_id_single_port;
  mac->ops.check_mng_mode = e1000_check_mng_mode_82574;
  mac->ops.led_on = e1000_led_on_82574;
  break;
 default:
  mac->ops.check_mng_mode = e1000e_check_mng_mode_generic;
  mac->ops.led_on = e1000e_led_on_generic;
  mac->ops.blink_led = e1000e_blink_led_generic;


  mac->has_fwsm = 1;
  break;
 }







 switch (hw->mac.type) {
 case 132:
 case 131:
  swsm2 = er32(SWSM2);

  if (!(swsm2 & E1000_SWSM2_LOCK)) {

   ew32(SWSM2, swsm2 | E1000_SWSM2_LOCK);
   force_clear_smbi = 1;
  } else {
   force_clear_smbi = 0;
  }
  break;
 default:
  force_clear_smbi = 1;
  break;
 }

 if (force_clear_smbi) {

  swsm = er32(SWSM);
  if (swsm & E1000_SWSM_SMBI) {




   e_dbg("Please update your 82571 Bootagent\n");
  }
  ew32(SWSM, swsm & ~E1000_SWSM_SMBI);
 }


 hw->dev_spec.e82571.smb_counter = 0;

 return 0;
}

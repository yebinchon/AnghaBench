
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rar_get_count; int setup_physical_interface; int rar_set; int led_off; int led_on; int cleanup_led; int setup_led; int id_led_init; int check_mng_mode; int blink_led; } ;
struct e1000_mac_info {int mta_reg_count; int type; int has_fwsm; int arc_subsystem_valid; int adaptive_ifs; TYPE_2__ ops; scalar_t__ rar_entry_count; } ;
struct TYPE_3__ {int media_type; } ;
struct e1000_hw {TYPE_1__ phy; struct e1000_mac_info mac; } ;
typedef int s32 ;


 scalar_t__ E1000_ICH_RAR_ENTRIES ;
 scalar_t__ E1000_PCH2_RAR_ENTRIES ;
 scalar_t__ E1000_PCH_LPT_RAR_ENTRIES ;
 int e1000_check_mng_mode_ich8lan ;
 int e1000_check_mng_mode_pchlan ;
 int e1000_cleanup_led_ich8lan ;
 int e1000_cleanup_led_pchlan ;



 int e1000_id_led_init_pchlan ;
 int e1000_led_off_ich8lan ;
 int e1000_led_off_pchlan ;
 int e1000_led_on_ich8lan ;
 int e1000_led_on_pchlan ;
 int e1000_media_type_copper ;





 int e1000_rar_get_count_pch_lpt ;
 int e1000_rar_set_pch2lan ;
 int e1000_rar_set_pch_lpt ;
 int e1000_setup_copper_link_pch_lpt ;
 int e1000_setup_led_pchlan ;
 int e1000e_blink_led_generic ;
 int e1000e_id_led_init_generic ;
 int e1000e_set_kmrn_lock_loss_workaround_ich8lan (struct e1000_hw*,int) ;
 int e1000e_setup_led_generic ;

__attribute__((used)) static s32 e1000_init_mac_params_ich8lan(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;


 hw->phy.media_type = e1000_media_type_copper;


 mac->mta_reg_count = 32;

 mac->rar_entry_count = E1000_ICH_RAR_ENTRIES;
 if (mac->type == 134)
  mac->rar_entry_count--;

 mac->has_fwsm = 1;

 mac->arc_subsystem_valid = 0;

 mac->adaptive_ifs = 1;


 switch (mac->type) {
 case 134:
 case 133:
 case 135:

  mac->ops.check_mng_mode = e1000_check_mng_mode_ich8lan;

  mac->ops.id_led_init = e1000e_id_led_init_generic;

  mac->ops.blink_led = e1000e_blink_led_generic;

  mac->ops.setup_led = e1000e_setup_led_generic;

  mac->ops.cleanup_led = e1000_cleanup_led_ich8lan;

  mac->ops.led_on = e1000_led_on_ich8lan;
  mac->ops.led_off = e1000_led_off_ich8lan;
  break;
 case 132:
  mac->rar_entry_count = E1000_PCH2_RAR_ENTRIES;
  mac->ops.rar_set = e1000_rar_set_pch2lan;

 case 130:
 case 129:
 case 131:
 case 128:

  mac->ops.check_mng_mode = e1000_check_mng_mode_pchlan;

  mac->ops.id_led_init = e1000_id_led_init_pchlan;

  mac->ops.setup_led = e1000_setup_led_pchlan;

  mac->ops.cleanup_led = e1000_cleanup_led_pchlan;

  mac->ops.led_on = e1000_led_on_pchlan;
  mac->ops.led_off = e1000_led_off_pchlan;
  break;
 default:
  break;
 }

 if (mac->type >= 130) {
  mac->rar_entry_count = E1000_PCH_LPT_RAR_ENTRIES;
  mac->ops.rar_set = e1000_rar_set_pch_lpt;
  mac->ops.setup_physical_interface =
      e1000_setup_copper_link_pch_lpt;
  mac->ops.rar_get_count = e1000_rar_get_count_pch_lpt;
 }


 if (mac->type == 134)
  e1000e_set_kmrn_lock_loss_workaround_ich8lan(hw, 1);

 return 0;
}

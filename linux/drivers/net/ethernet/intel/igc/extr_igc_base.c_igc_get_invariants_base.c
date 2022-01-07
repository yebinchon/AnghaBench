
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct igc_mac_info {int type; } ;
struct TYPE_2__ {int media_type; } ;
struct igc_hw {int device_id; struct igc_mac_info mac; TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;







 scalar_t__ IGC_ERR_MAC_INIT ;

 scalar_t__ igc_init_mac_params_base (struct igc_hw*) ;
 scalar_t__ igc_init_nvm_params_base (struct igc_hw*) ;
 scalar_t__ igc_init_nvm_params_i225 (struct igc_hw*) ;
 scalar_t__ igc_init_phy_params_base (struct igc_hw*) ;
 int igc_media_type_copper ;

__attribute__((used)) static s32 igc_get_invariants_base(struct igc_hw *hw)
{
 struct igc_mac_info *mac = &hw->mac;
 s32 ret_val = 0;

 switch (hw->device_id) {
 case 130:
 case 129:
 case 132:
 case 133:
 case 131:
  mac->type = 128;
  break;
 default:
  return -IGC_ERR_MAC_INIT;
 }

 hw->phy.media_type = igc_media_type_copper;


 ret_val = igc_init_mac_params_base(hw);
 if (ret_val)
  goto out;


 ret_val = igc_init_nvm_params_base(hw);
 switch (hw->mac.type) {
 case 128:
  ret_val = igc_init_nvm_params_i225(hw);
  break;
 default:
  break;
 }


 ret_val = igc_init_phy_params_base(hw);
 if (ret_val)
  goto out;

out:
 return ret_val;
}

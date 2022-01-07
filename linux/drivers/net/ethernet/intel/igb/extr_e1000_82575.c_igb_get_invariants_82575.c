
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct e1000_mac_info {int type; } ;
struct TYPE_6__ {void* media_type; } ;
struct TYPE_5__ {int e100_base_fx; } ;
struct e1000_dev_spec_82575 {int sgmii_active; int module_plugged; TYPE_2__ eth_flags; } ;
struct TYPE_4__ {struct e1000_dev_spec_82575 _82575; } ;
struct e1000_hw {int device_id; struct e1000_mac_info mac; TYPE_3__ phy; TYPE_1__ dev_spec; } ;
typedef scalar_t__ s32 ;


 int E1000_CTRL_EXT ;

 int E1000_CTRL_EXT_LINK_MODE_MASK ;
 scalar_t__ E1000_ERR_MAC_INIT ;
 int e1000_82575 ;

 int e1000_82580 ;



 int e1000_i354 ;
 void* e1000_media_type_copper ;
 void* e1000_media_type_internal_serdes ;
 void* e1000_media_type_unknown ;
 scalar_t__ igb_init_mac_params_82575 (struct e1000_hw*) ;
 int igb_init_mbx_params_pf (struct e1000_hw*) ;
 scalar_t__ igb_init_nvm_params_82575 (struct e1000_hw*) ;
 scalar_t__ igb_init_nvm_params_i210 (struct e1000_hw*) ;
 scalar_t__ igb_init_phy_params_82575 (struct e1000_hw*) ;
 scalar_t__ igb_set_sfp_media_type_82575 (struct e1000_hw*) ;
 int igb_sgmii_uses_mdio_82575 (struct e1000_hw*) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static s32 igb_get_invariants_82575(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 struct e1000_dev_spec_82575 *dev_spec = &hw->dev_spec._82575;
 s32 ret_val;
 u32 ctrl_ext = 0;
 u32 link_mode = 0;

 switch (hw->device_id) {
 case 166:
 case 165:
 case 164:
  mac->type = e1000_82575;
  break;
 case 163:
 case 161:
 case 160:
 case 162:
 case 157:
 case 159:
 case 158:
 case 156:
  mac->type = 131;
  break;
 case 155:
 case 153:
 case 152:
 case 151:
 case 150:
 case 154:
 case 146:
 case 148:
 case 149:
 case 147:
  mac->type = e1000_82580;
  break;
 case 138:
 case 137:
 case 136:
 case 135:
  mac->type = 128;
  break;
 case 145:
 case 143:
 case 142:
 case 140:
 case 144:
 case 141:
  mac->type = 130;
  break;
 case 139:
  mac->type = 129;
  break;
 case 134:
 case 132:
 case 133:
  mac->type = e1000_i354;
  break;
 default:
  return -E1000_ERR_MAC_INIT;
 }
 hw->phy.media_type = e1000_media_type_copper;
 dev_spec->sgmii_active = 0;
 dev_spec->module_plugged = 0;

 ctrl_ext = rd32(E1000_CTRL_EXT);

 link_mode = ctrl_ext & E1000_CTRL_EXT_LINK_MODE_MASK;
 switch (link_mode) {
 case 169:
  hw->phy.media_type = e1000_media_type_internal_serdes;
  break;
 case 167:

  if (igb_sgmii_uses_mdio_82575(hw)) {
   hw->phy.media_type = e1000_media_type_copper;
   dev_spec->sgmii_active = 1;
   break;
  }

 case 168:

  ret_val = igb_set_sfp_media_type_82575(hw);
  if ((ret_val != 0) ||
      (hw->phy.media_type == e1000_media_type_unknown)) {



   hw->phy.media_type = e1000_media_type_internal_serdes;

   if (link_mode == 167) {
    hw->phy.media_type = e1000_media_type_copper;
    dev_spec->sgmii_active = 1;
   }

   break;
  }


  if (dev_spec->eth_flags.e100_base_fx)
   break;


  ctrl_ext &= ~E1000_CTRL_EXT_LINK_MODE_MASK;

  if (hw->phy.media_type == e1000_media_type_copper)
   ctrl_ext |= 167;
  else
   ctrl_ext |= 168;

  wr32(E1000_CTRL_EXT, ctrl_ext);

  break;
 default:
  break;
 }


 ret_val = igb_init_mac_params_82575(hw);
 if (ret_val)
  goto out;


 ret_val = igb_init_nvm_params_82575(hw);
 switch (hw->mac.type) {
 case 130:
 case 129:
  ret_val = igb_init_nvm_params_i210(hw);
  break;
 default:
  break;
 }

 if (ret_val)
  goto out;


 switch (mac->type) {
 case 131:
 case 128:
  igb_init_mbx_params_pf(hw);
  break;
 default:
  break;
 }


 ret_val = igb_init_phy_params_82575(hw);

out:
 return ret_val;
}

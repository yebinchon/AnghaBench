
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {scalar_t__ media_type; scalar_t__ original_fc; void* fc; scalar_t__ fc_strict_ieee; scalar_t__ autoneg; scalar_t__ autoneg_failed; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_FC_FULL ;
 scalar_t__ E1000_FC_NONE ;
 void* E1000_FC_RX_PAUSE ;
 scalar_t__ E1000_FC_TX_PAUSE ;
 scalar_t__ E1000_SUCCESS ;
 int HALF_DUPLEX ;
 int MII_SR_AUTONEG_COMPLETE ;
 int NWAY_AR_ASM_DIR ;
 int NWAY_AR_PAUSE ;
 int NWAY_LPAR_ASM_DIR ;
 int NWAY_LPAR_PAUSE ;
 int PHY_AUTONEG_ADV ;
 int PHY_LP_ABILITY ;
 int PHY_STATUS ;
 scalar_t__ e1000_force_mac_fc (struct e1000_hw*) ;
 scalar_t__ e1000_get_speed_and_duplex (struct e1000_hw*,int*,int*) ;
 scalar_t__ e1000_media_type_copper ;
 scalar_t__ e1000_media_type_fiber ;
 scalar_t__ e1000_media_type_internal_serdes ;
 scalar_t__ e1000_read_phy_reg (struct e1000_hw*,int ,int*) ;
 int e_dbg (char*) ;

__attribute__((used)) static s32 e1000_config_fc_after_link_up(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 mii_status_reg;
 u16 mii_nway_adv_reg;
 u16 mii_nway_lp_ability_reg;
 u16 speed;
 u16 duplex;





 if (((hw->media_type == e1000_media_type_fiber) &&
      (hw->autoneg_failed)) ||
     ((hw->media_type == e1000_media_type_internal_serdes) &&
      (hw->autoneg_failed)) ||
     ((hw->media_type == e1000_media_type_copper) &&
      (!hw->autoneg))) {
  ret_val = e1000_force_mac_fc(hw);
  if (ret_val) {
   e_dbg("Error forcing flow control settings\n");
   return ret_val;
  }
 }






 if ((hw->media_type == e1000_media_type_copper) && hw->autoneg) {




  ret_val = e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg);
  if (ret_val)
   return ret_val;
  ret_val = e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg);
  if (ret_val)
   return ret_val;

  if (mii_status_reg & MII_SR_AUTONEG_COMPLETE) {






   ret_val = e1000_read_phy_reg(hw, PHY_AUTONEG_ADV,
           &mii_nway_adv_reg);
   if (ret_val)
    return ret_val;
   ret_val = e1000_read_phy_reg(hw, PHY_LP_ABILITY,
           &mii_nway_lp_ability_reg);
   if (ret_val)
    return ret_val;
   if ((mii_nway_adv_reg & NWAY_AR_PAUSE) &&
       (mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE)) {







    if (hw->original_fc == E1000_FC_FULL) {
     hw->fc = E1000_FC_FULL;
     e_dbg("Flow Control = FULL.\n");
    } else {
     hw->fc = E1000_FC_RX_PAUSE;
     e_dbg
         ("Flow Control = RX PAUSE frames only.\n");
    }
   }
   else if (!(mii_nway_adv_reg & NWAY_AR_PAUSE) &&
     (mii_nway_adv_reg & NWAY_AR_ASM_DIR) &&
     (mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE) &&
     (mii_nway_lp_ability_reg & NWAY_LPAR_ASM_DIR)) {
    hw->fc = E1000_FC_TX_PAUSE;
    e_dbg
        ("Flow Control = TX PAUSE frames only.\n");
   }
   else if ((mii_nway_adv_reg & NWAY_AR_PAUSE) &&
     (mii_nway_adv_reg & NWAY_AR_ASM_DIR) &&
     !(mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE) &&
     (mii_nway_lp_ability_reg & NWAY_LPAR_ASM_DIR)) {
    hw->fc = E1000_FC_RX_PAUSE;
    e_dbg
        ("Flow Control = RX PAUSE frames only.\n");
   }
   else if ((hw->original_fc == E1000_FC_NONE ||
      hw->original_fc == E1000_FC_TX_PAUSE) ||
     hw->fc_strict_ieee) {
    hw->fc = E1000_FC_NONE;
    e_dbg("Flow Control = NONE.\n");
   } else {
    hw->fc = E1000_FC_RX_PAUSE;
    e_dbg
        ("Flow Control = RX PAUSE frames only.\n");
   }





   ret_val =
       e1000_get_speed_and_duplex(hw, &speed, &duplex);
   if (ret_val) {
    e_dbg
        ("Error getting link speed and duplex\n");
    return ret_val;
   }

   if (duplex == HALF_DUPLEX)
    hw->fc = E1000_FC_NONE;




   ret_val = e1000_force_mac_fc(hw);
   if (ret_val) {
    e_dbg
        ("Error forcing flow control settings\n");
    return ret_val;
   }
  } else {
   e_dbg
       ("Copper PHY and Auto Neg has not completed.\n");
  }
 }
 return E1000_SUCCESS;
}

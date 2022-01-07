
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_7__ {scalar_t__ (* get_speed_and_duplex ) (struct igc_hw*,scalar_t__*,scalar_t__*) ;} ;
struct igc_mac_info {TYPE_3__ ops; scalar_t__ autoneg; scalar_t__ autoneg_failed; } ;
struct TYPE_8__ {scalar_t__ requested_mode; void* current_mode; scalar_t__ strict_ieee; } ;
struct TYPE_5__ {scalar_t__ (* read_reg ) (struct igc_hw*,int ,scalar_t__*) ;} ;
struct TYPE_6__ {scalar_t__ media_type; TYPE_1__ ops; } ;
struct igc_hw {TYPE_4__ fc; struct igc_mac_info mac; TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ HALF_DUPLEX ;
 scalar_t__ MII_SR_AUTONEG_COMPLETE ;
 scalar_t__ NWAY_AR_ASM_DIR ;
 scalar_t__ NWAY_AR_PAUSE ;
 scalar_t__ NWAY_LPAR_ASM_DIR ;
 scalar_t__ NWAY_LPAR_PAUSE ;
 int PHY_AUTONEG_ADV ;
 int PHY_LP_ABILITY ;
 int PHY_STATUS ;
 int hw_dbg (char*) ;
 scalar_t__ igc_fc_full ;
 scalar_t__ igc_fc_none ;
 void* igc_fc_rx_pause ;
 scalar_t__ igc_fc_tx_pause ;
 scalar_t__ igc_force_mac_fc (struct igc_hw*) ;
 scalar_t__ igc_media_type_copper ;
 scalar_t__ stub1 (struct igc_hw*,int ,scalar_t__*) ;
 scalar_t__ stub2 (struct igc_hw*,int ,scalar_t__*) ;
 scalar_t__ stub3 (struct igc_hw*,int ,scalar_t__*) ;
 scalar_t__ stub4 (struct igc_hw*,int ,scalar_t__*) ;
 scalar_t__ stub5 (struct igc_hw*,scalar_t__*,scalar_t__*) ;

s32 igc_config_fc_after_link_up(struct igc_hw *hw)
{
 u16 mii_status_reg, mii_nway_adv_reg, mii_nway_lp_ability_reg;
 struct igc_mac_info *mac = &hw->mac;
 u16 speed, duplex;
 s32 ret_val = 0;





 if (mac->autoneg_failed) {
  if (hw->phy.media_type == igc_media_type_copper)
   ret_val = igc_force_mac_fc(hw);
 }

 if (ret_val) {
  hw_dbg("Error forcing flow control settings\n");
  goto out;
 }






 if (hw->phy.media_type == igc_media_type_copper && mac->autoneg) {




  ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS,
            &mii_status_reg);
  if (ret_val)
   goto out;
  ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS,
            &mii_status_reg);
  if (ret_val)
   goto out;

  if (!(mii_status_reg & MII_SR_AUTONEG_COMPLETE)) {
   hw_dbg("Copper PHY and Auto Neg has not completed.\n");
   goto out;
  }







  ret_val = hw->phy.ops.read_reg(hw, PHY_AUTONEG_ADV,
            &mii_nway_adv_reg);
  if (ret_val)
   goto out;
  ret_val = hw->phy.ops.read_reg(hw, PHY_LP_ABILITY,
            &mii_nway_lp_ability_reg);
  if (ret_val)
   goto out;
  if ((mii_nway_adv_reg & NWAY_AR_PAUSE) &&
      (mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE)) {






   if (hw->fc.requested_mode == igc_fc_full) {
    hw->fc.current_mode = igc_fc_full;
    hw_dbg("Flow Control = FULL.\n");
   } else {
    hw->fc.current_mode = igc_fc_rx_pause;
    hw_dbg("Flow Control = RX PAUSE frames only.\n");
   }
  }
  else if (!(mii_nway_adv_reg & NWAY_AR_PAUSE) &&
    (mii_nway_adv_reg & NWAY_AR_ASM_DIR) &&
    (mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE) &&
    (mii_nway_lp_ability_reg & NWAY_LPAR_ASM_DIR)) {
   hw->fc.current_mode = igc_fc_tx_pause;
   hw_dbg("Flow Control = TX PAUSE frames only.\n");
  }







  else if ((mii_nway_adv_reg & NWAY_AR_PAUSE) &&
    (mii_nway_adv_reg & NWAY_AR_ASM_DIR) &&
    !(mii_nway_lp_ability_reg & NWAY_LPAR_PAUSE) &&
    (mii_nway_lp_ability_reg & NWAY_LPAR_ASM_DIR)) {
   hw->fc.current_mode = igc_fc_rx_pause;
   hw_dbg("Flow Control = RX PAUSE frames only.\n");
  }
  else if ((hw->fc.requested_mode == igc_fc_none) ||
    (hw->fc.requested_mode == igc_fc_tx_pause) ||
    (hw->fc.strict_ieee)) {
   hw->fc.current_mode = igc_fc_none;
   hw_dbg("Flow Control = NONE.\n");
  } else {
   hw->fc.current_mode = igc_fc_rx_pause;
   hw_dbg("Flow Control = RX PAUSE frames only.\n");
  }





  ret_val = hw->mac.ops.get_speed_and_duplex(hw, &speed, &duplex);
  if (ret_val) {
   hw_dbg("Error getting link speed and duplex\n");
   goto out;
  }

  if (duplex == HALF_DUPLEX)
   hw->fc.current_mode = igc_fc_none;




  ret_val = igc_force_mac_fc(hw);
  if (ret_val) {
   hw_dbg("Error forcing flow control settings\n");
   goto out;
  }
 }

out:
 return 0;
}

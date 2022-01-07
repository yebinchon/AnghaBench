
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct e1000_hw {scalar_t__ forced_speed_duplex; scalar_t__ phy_type; scalar_t__ mac_type; int autoneg; scalar_t__ wait_autoneg_complete; int fc; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int DEVICE_SPEED_MASK ;
 int E1000_CTRL_ASDE ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_SPD_100 ;
 int E1000_CTRL_SPD_1000 ;
 int E1000_FC_NONE ;
 scalar_t__ E1000_SUCCESS ;
 int IGP01E1000_PHY_PORT_CTRL ;
 scalar_t__ IGP01E1000_PSCR_AUTO_MDIX ;
 scalar_t__ IGP01E1000_PSCR_FORCE_MDI_MDIX ;
 scalar_t__ M88E1000_EPSCR_TX_CLK_25 ;
 int M88E1000_EXT_PHY_SPEC_CTRL ;
 int M88E1000_PHY_SPEC_CTRL ;
 scalar_t__ M88E1000_PSCR_ASSERT_CRS_ON_TX ;
 scalar_t__ M88E1000_PSCR_AUTO_X_MODE ;
 scalar_t__ MII_CR_AUTO_NEG_EN ;
 scalar_t__ MII_CR_FULL_DUPLEX ;
 scalar_t__ MII_CR_RESET ;
 scalar_t__ MII_CR_SPEED_10 ;
 scalar_t__ MII_CR_SPEED_100 ;
 scalar_t__ MII_CR_SPEED_1000 ;
 scalar_t__ MII_SR_LINK_STATUS ;
 int PHY_CTRL ;
 scalar_t__ PHY_FORCE_TIME ;
 int PHY_STATUS ;
 scalar_t__ e1000_100_full ;
 scalar_t__ e1000_100_half ;
 scalar_t__ e1000_10_full ;
 scalar_t__ e1000_10_half ;
 scalar_t__ e1000_82543 ;
 scalar_t__ e1000_82544 ;
 int e1000_config_collision_dist (struct e1000_hw*) ;
 scalar_t__ e1000_phy_m88 ;
 scalar_t__ e1000_phy_reset_dsp (struct e1000_hw*) ;
 scalar_t__ e1000_polarity_reversal_workaround (struct e1000_hw*) ;
 scalar_t__ e1000_read_phy_reg (struct e1000_hw*,int ,scalar_t__*) ;
 scalar_t__ e1000_write_phy_reg (struct e1000_hw*,int ,scalar_t__) ;
 int e_dbg (char*,...) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int msleep (int) ;
 int udelay (int) ;

__attribute__((used)) static s32 e1000_phy_force_speed_duplex(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val;
 u16 mii_ctrl_reg;
 u16 mii_status_reg;
 u16 phy_data;
 u16 i;


 hw->fc = E1000_FC_NONE;

 e_dbg("hw->fc = %d\n", hw->fc);


 ctrl = er32(CTRL);


 ctrl |= (E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
 ctrl &= ~(DEVICE_SPEED_MASK);


 ctrl &= ~E1000_CTRL_ASDE;


 ret_val = e1000_read_phy_reg(hw, PHY_CTRL, &mii_ctrl_reg);
 if (ret_val)
  return ret_val;



 mii_ctrl_reg &= ~MII_CR_AUTO_NEG_EN;


 if (hw->forced_speed_duplex == e1000_100_full ||
     hw->forced_speed_duplex == e1000_10_full) {



  ctrl |= E1000_CTRL_FD;
  mii_ctrl_reg |= MII_CR_FULL_DUPLEX;
  e_dbg("Full Duplex\n");
 } else {



  ctrl &= ~E1000_CTRL_FD;
  mii_ctrl_reg &= ~MII_CR_FULL_DUPLEX;
  e_dbg("Half Duplex\n");
 }


 if (hw->forced_speed_duplex == e1000_100_full ||
     hw->forced_speed_duplex == e1000_100_half) {

  ctrl |= E1000_CTRL_SPD_100;
  mii_ctrl_reg |= MII_CR_SPEED_100;
  mii_ctrl_reg &= ~(MII_CR_SPEED_1000 | MII_CR_SPEED_10);
  e_dbg("Forcing 100mb ");
 } else {

  ctrl &= ~(E1000_CTRL_SPD_1000 | E1000_CTRL_SPD_100);
  mii_ctrl_reg |= MII_CR_SPEED_10;
  mii_ctrl_reg &= ~(MII_CR_SPEED_1000 | MII_CR_SPEED_100);
  e_dbg("Forcing 10mb ");
 }

 e1000_config_collision_dist(hw);


 ew32(CTRL, ctrl);

 if (hw->phy_type == e1000_phy_m88) {
  ret_val =
      e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
  if (ret_val)
   return ret_val;




  phy_data &= ~M88E1000_PSCR_AUTO_X_MODE;
  ret_val =
      e1000_write_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, phy_data);
  if (ret_val)
   return ret_val;

  e_dbg("M88E1000 PSCR: %x\n", phy_data);


  mii_ctrl_reg |= MII_CR_RESET;


 } else {



  ret_val =
      e1000_read_phy_reg(hw, IGP01E1000_PHY_PORT_CTRL, &phy_data);
  if (ret_val)
   return ret_val;

  phy_data &= ~IGP01E1000_PSCR_AUTO_MDIX;
  phy_data &= ~IGP01E1000_PSCR_FORCE_MDI_MDIX;

  ret_val =
      e1000_write_phy_reg(hw, IGP01E1000_PHY_PORT_CTRL, phy_data);
  if (ret_val)
   return ret_val;
 }


 ret_val = e1000_write_phy_reg(hw, PHY_CTRL, mii_ctrl_reg);
 if (ret_val)
  return ret_val;

 udelay(1);
 if (hw->wait_autoneg_complete) {

  e_dbg("Waiting for forced speed/duplex link.\n");
  mii_status_reg = 0;


  for (i = PHY_FORCE_TIME; i > 0; i--) {



   ret_val =
       e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg);
   if (ret_val)
    return ret_val;

   ret_val =
       e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg);
   if (ret_val)
    return ret_val;

   if (mii_status_reg & MII_SR_LINK_STATUS)
    break;
   msleep(100);
  }
  if ((i == 0) && (hw->phy_type == e1000_phy_m88)) {



   ret_val = e1000_phy_reset_dsp(hw);
   if (ret_val) {
    e_dbg("Error Resetting PHY DSP\n");
    return ret_val;
   }
  }



  for (i = PHY_FORCE_TIME; i > 0; i--) {
   if (mii_status_reg & MII_SR_LINK_STATUS)
    break;
   msleep(100);



   ret_val =
       e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg);
   if (ret_val)
    return ret_val;

   ret_val =
       e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg);
   if (ret_val)
    return ret_val;
  }
 }

 if (hw->phy_type == e1000_phy_m88) {





  ret_val =
      e1000_read_phy_reg(hw, M88E1000_EXT_PHY_SPEC_CTRL,
           &phy_data);
  if (ret_val)
   return ret_val;

  phy_data |= M88E1000_EPSCR_TX_CLK_25;
  ret_val =
      e1000_write_phy_reg(hw, M88E1000_EXT_PHY_SPEC_CTRL,
     phy_data);
  if (ret_val)
   return ret_val;





  ret_val =
      e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
  if (ret_val)
   return ret_val;

  phy_data |= M88E1000_PSCR_ASSERT_CRS_ON_TX;
  ret_val =
      e1000_write_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, phy_data);
  if (ret_val)
   return ret_val;

  if ((hw->mac_type == e1000_82544 ||
       hw->mac_type == e1000_82543) &&
      (!hw->autoneg) &&
      (hw->forced_speed_duplex == e1000_10_full ||
       hw->forced_speed_duplex == e1000_10_half)) {
   ret_val = e1000_polarity_reversal_workaround(hw);
   if (ret_val)
    return ret_val;
  }
 }
 return E1000_SUCCESS;
}

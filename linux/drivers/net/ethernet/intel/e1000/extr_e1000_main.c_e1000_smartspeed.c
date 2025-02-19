
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {scalar_t__ phy_type; int autoneg_advertised; int autoneg; } ;
struct e1000_adapter {scalar_t__ smartspeed; struct e1000_hw hw; } ;


 int ADVERTISE_1000_FULL ;
 int CR_1000T_MS_ENABLE ;
 scalar_t__ E1000_SMARTSPEED_DOWNSHIFT ;
 scalar_t__ E1000_SMARTSPEED_MAX ;
 int MII_CR_AUTO_NEG_EN ;
 int MII_CR_RESTART_AUTO_NEG ;
 int PHY_1000T_CTRL ;
 int PHY_1000T_STATUS ;
 int PHY_CTRL ;
 int SR_1000T_MS_CONFIG_FAULT ;
 scalar_t__ e1000_phy_igp ;
 int e1000_phy_setup_autoneg (struct e1000_hw*) ;
 int e1000_read_phy_reg (struct e1000_hw*,int ,int*) ;
 int e1000_write_phy_reg (struct e1000_hw*,int ,int) ;

__attribute__((used)) static void e1000_smartspeed(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u16 phy_status;
 u16 phy_ctrl;

 if ((hw->phy_type != e1000_phy_igp) || !hw->autoneg ||
    !(hw->autoneg_advertised & ADVERTISE_1000_FULL))
  return;

 if (adapter->smartspeed == 0) {



  e1000_read_phy_reg(hw, PHY_1000T_STATUS, &phy_status);
  if (!(phy_status & SR_1000T_MS_CONFIG_FAULT))
   return;
  e1000_read_phy_reg(hw, PHY_1000T_STATUS, &phy_status);
  if (!(phy_status & SR_1000T_MS_CONFIG_FAULT))
   return;
  e1000_read_phy_reg(hw, PHY_1000T_CTRL, &phy_ctrl);
  if (phy_ctrl & CR_1000T_MS_ENABLE) {
   phy_ctrl &= ~CR_1000T_MS_ENABLE;
   e1000_write_phy_reg(hw, PHY_1000T_CTRL,
         phy_ctrl);
   adapter->smartspeed++;
   if (!e1000_phy_setup_autoneg(hw) &&
      !e1000_read_phy_reg(hw, PHY_CTRL,
            &phy_ctrl)) {
    phy_ctrl |= (MII_CR_AUTO_NEG_EN |
          MII_CR_RESTART_AUTO_NEG);
    e1000_write_phy_reg(hw, PHY_CTRL,
          phy_ctrl);
   }
  }
  return;
 } else if (adapter->smartspeed == E1000_SMARTSPEED_DOWNSHIFT) {

  e1000_read_phy_reg(hw, PHY_1000T_CTRL, &phy_ctrl);
  phy_ctrl |= CR_1000T_MS_ENABLE;
  e1000_write_phy_reg(hw, PHY_1000T_CTRL, phy_ctrl);
  if (!e1000_phy_setup_autoneg(hw) &&
     !e1000_read_phy_reg(hw, PHY_CTRL, &phy_ctrl)) {
   phy_ctrl |= (MII_CR_AUTO_NEG_EN |
         MII_CR_RESTART_AUTO_NEG);
   e1000_write_phy_reg(hw, PHY_CTRL, phy_ctrl);
  }
 }

 if (adapter->smartspeed++ == E1000_SMARTSPEED_MAX)
  adapter->smartspeed = 0;
}

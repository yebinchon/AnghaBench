
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* set_d0_lplu_state ) (struct e1000_hw*,int) ;} ;
struct e1000_phy_info {int mdix; scalar_t__ autoneg_advertised; TYPE_1__ ops; } ;
struct TYPE_4__ {scalar_t__ autoneg; } ;
struct e1000_hw {TYPE_2__ mac; struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ ADVERTISE_1000_FULL ;
 int CTL1000_ENABLE_MASTER ;
 int IGP01E1000_PHY_PORT_CONFIG ;
 int IGP01E1000_PHY_PORT_CTRL ;
 int IGP01E1000_PSCFR_SMART_SPEED ;
 int IGP01E1000_PSCR_AUTO_MDIX ;
 int IGP01E1000_PSCR_FORCE_MDI_MDIX ;
 int MII_CTRL1000 ;
 scalar_t__ e1000_phy_hw_reset (struct e1000_hw*) ;
 scalar_t__ e1000_set_master_slave_mode (struct e1000_hw*) ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int *) ;
 scalar_t__ e1e_wphy (struct e1000_hw*,int ,int ) ;
 int e_dbg (char*) ;
 int msleep (int) ;
 scalar_t__ stub1 (struct e1000_hw*,int) ;

s32 e1000e_copper_link_setup_igp(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 data;

 ret_val = e1000_phy_hw_reset(hw);
 if (ret_val) {
  e_dbg("Error resetting the PHY.\n");
  return ret_val;
 }




 msleep(100);


 if (hw->phy.ops.set_d0_lplu_state) {
  ret_val = hw->phy.ops.set_d0_lplu_state(hw, 0);
  if (ret_val) {
   e_dbg("Error Disabling LPLU D0\n");
   return ret_val;
  }
 }

 ret_val = e1e_rphy(hw, IGP01E1000_PHY_PORT_CTRL, &data);
 if (ret_val)
  return ret_val;

 data &= ~IGP01E1000_PSCR_AUTO_MDIX;

 switch (phy->mdix) {
 case 1:
  data &= ~IGP01E1000_PSCR_FORCE_MDI_MDIX;
  break;
 case 2:
  data |= IGP01E1000_PSCR_FORCE_MDI_MDIX;
  break;
 case 0:
 default:
  data |= IGP01E1000_PSCR_AUTO_MDIX;
  break;
 }
 ret_val = e1e_wphy(hw, IGP01E1000_PHY_PORT_CTRL, data);
 if (ret_val)
  return ret_val;


 if (hw->mac.autoneg) {




  if (phy->autoneg_advertised == ADVERTISE_1000_FULL) {

   ret_val = e1e_rphy(hw, IGP01E1000_PHY_PORT_CONFIG,
        &data);
   if (ret_val)
    return ret_val;

   data &= ~IGP01E1000_PSCFR_SMART_SPEED;
   ret_val = e1e_wphy(hw, IGP01E1000_PHY_PORT_CONFIG,
        data);
   if (ret_val)
    return ret_val;


   ret_val = e1e_rphy(hw, MII_CTRL1000, &data);
   if (ret_val)
    return ret_val;

   data &= ~CTL1000_ENABLE_MASTER;
   ret_val = e1e_wphy(hw, MII_CTRL1000, data);
   if (ret_val)
    return ret_val;
  }

  ret_val = e1000_set_master_slave_mode(hw);
 }

 return ret_val;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;scalar_t__ (* set_d0_lplu_state ) (struct e1000_hw*,int) ;scalar_t__ (* set_d3_lplu_state ) (struct e1000_hw*,int) ;scalar_t__ (* reset ) (struct e1000_hw*) ;} ;
struct e1000_phy_info {scalar_t__ type; int mdix; scalar_t__ autoneg_advertised; int original_ms_type; int ms_type; TYPE_2__ ops; scalar_t__ reset_disable; } ;
struct TYPE_3__ {scalar_t__ autoneg; } ;
struct e1000_hw {TYPE_1__ mac; struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ ADVERTISE_1000_FULL ;
 int CR_1000T_MS_ENABLE ;
 int CR_1000T_MS_VALUE ;
 int IGP01E1000_PHY_PORT_CONFIG ;
 int IGP01E1000_PHY_PORT_CTRL ;
 int IGP01E1000_PSCFR_SMART_SPEED ;
 int IGP01E1000_PSCR_AUTO_MDIX ;
 int IGP01E1000_PSCR_FORCE_MDI_MDIX ;
 int PHY_1000T_CTRL ;



 scalar_t__ e1000_phy_igp ;
 int hw_dbg (char*) ;
 int msleep (int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 scalar_t__ stub10 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub11 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub2 (struct e1000_hw*,int) ;
 scalar_t__ stub3 (struct e1000_hw*,int) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub5 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub6 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub7 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub8 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub9 (struct e1000_hw*,int ,int) ;

s32 igb_copper_link_setup_igp(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 data;

 if (phy->reset_disable) {
  ret_val = 0;
  goto out;
 }

 ret_val = phy->ops.reset(hw);
 if (ret_val) {
  hw_dbg("Error resetting the PHY.\n");
  goto out;
 }




 msleep(100);




 if (phy->type == e1000_phy_igp) {

  if (phy->ops.set_d3_lplu_state)
   ret_val = phy->ops.set_d3_lplu_state(hw, 0);
  if (ret_val) {
   hw_dbg("Error Disabling LPLU D3\n");
   goto out;
  }
 }


 ret_val = phy->ops.set_d0_lplu_state(hw, 0);
 if (ret_val) {
  hw_dbg("Error Disabling LPLU D0\n");
  goto out;
 }

 ret_val = phy->ops.read_reg(hw, IGP01E1000_PHY_PORT_CTRL, &data);
 if (ret_val)
  goto out;

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
 ret_val = phy->ops.write_reg(hw, IGP01E1000_PHY_PORT_CTRL, data);
 if (ret_val)
  goto out;


 if (hw->mac.autoneg) {




  if (phy->autoneg_advertised == ADVERTISE_1000_FULL) {

   ret_val = phy->ops.read_reg(hw,
          IGP01E1000_PHY_PORT_CONFIG,
          &data);
   if (ret_val)
    goto out;

   data &= ~IGP01E1000_PSCFR_SMART_SPEED;
   ret_val = phy->ops.write_reg(hw,
           IGP01E1000_PHY_PORT_CONFIG,
           data);
   if (ret_val)
    goto out;


   ret_val = phy->ops.read_reg(hw, PHY_1000T_CTRL, &data);
   if (ret_val)
    goto out;

   data &= ~CR_1000T_MS_ENABLE;
   ret_val = phy->ops.write_reg(hw, PHY_1000T_CTRL, data);
   if (ret_val)
    goto out;
  }

  ret_val = phy->ops.read_reg(hw, PHY_1000T_CTRL, &data);
  if (ret_val)
   goto out;


  phy->original_ms_type = (data & CR_1000T_MS_ENABLE) ?
   ((data & CR_1000T_MS_VALUE) ?
   129 :
   128) :
   130;

  switch (phy->ms_type) {
  case 129:
   data |= (CR_1000T_MS_ENABLE | CR_1000T_MS_VALUE);
   break;
  case 128:
   data |= CR_1000T_MS_ENABLE;
   data &= ~(CR_1000T_MS_VALUE);
   break;
  case 130:
   data &= ~CR_1000T_MS_ENABLE;
  default:
   break;
  }
  ret_val = phy->ops.write_reg(hw, PHY_1000T_CTRL, data);
  if (ret_val)
   goto out;
 }

out:
 return ret_val;
}

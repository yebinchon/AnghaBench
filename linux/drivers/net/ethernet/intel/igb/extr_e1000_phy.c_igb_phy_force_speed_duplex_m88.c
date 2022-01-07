
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;} ;
struct e1000_phy_info {scalar_t__ type; int id; TYPE_1__ ops; scalar_t__ autoneg_wait_to_complete; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;




 int M88E1000_EPSCR_TX_CLK_25 ;
 int M88E1000_EXT_PHY_SPEC_CTRL ;
 int M88E1000_PHY_PAGE_SELECT ;
 int M88E1000_PHY_SPEC_CTRL ;
 int M88E1000_PSCR_ASSERT_CRS_ON_TX ;
 int M88E1000_PSCR_AUTO_X_MODE ;



 int PHY_CONTROL ;
 int PHY_FORCE_LIMIT ;
 scalar_t__ e1000_phy_i210 ;
 scalar_t__ e1000_phy_m88 ;
 int hw_dbg (char*,...) ;
 int igb_phy_force_speed_duplex_setup (struct e1000_hw*,int*) ;
 scalar_t__ igb_phy_has_link (struct e1000_hw*,int ,int,int*) ;
 scalar_t__ igb_phy_reset_dsp (struct e1000_hw*) ;
 scalar_t__ igb_phy_sw_reset (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub5 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub6 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub7 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub8 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub9 (struct e1000_hw*,int ,int) ;

s32 igb_phy_force_speed_duplex_m88(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 phy_data;
 bool link;


 if (phy->type != e1000_phy_i210) {



  ret_val = phy->ops.read_reg(hw, M88E1000_PHY_SPEC_CTRL,
         &phy_data);
  if (ret_val)
   goto out;

  phy_data &= ~M88E1000_PSCR_AUTO_X_MODE;
  ret_val = phy->ops.write_reg(hw, M88E1000_PHY_SPEC_CTRL,
          phy_data);
  if (ret_val)
   goto out;

  hw_dbg("M88E1000 PSCR: %X\n", phy_data);
 }

 ret_val = phy->ops.read_reg(hw, PHY_CONTROL, &phy_data);
 if (ret_val)
  goto out;

 igb_phy_force_speed_duplex_setup(hw, &phy_data);

 ret_val = phy->ops.write_reg(hw, PHY_CONTROL, phy_data);
 if (ret_val)
  goto out;


 ret_val = igb_phy_sw_reset(hw);
 if (ret_val)
  goto out;

 if (phy->autoneg_wait_to_complete) {
  hw_dbg("Waiting for forced speed/duplex link on M88 phy.\n");

  ret_val = igb_phy_has_link(hw, PHY_FORCE_LIMIT, 100000, &link);
  if (ret_val)
   goto out;

  if (!link) {
   bool reset_dsp = 1;

   switch (hw->phy.id) {
   case 131:
   case 130:
   case 128:
   case 129:
   case 132:
    reset_dsp = 0;
    break;
   default:
    if (hw->phy.type != e1000_phy_m88)
     reset_dsp = 0;
    break;
   }
   if (!reset_dsp) {
    hw_dbg("Link taking longer than expected.\n");
   } else {



    ret_val = phy->ops.write_reg(hw,
      M88E1000_PHY_PAGE_SELECT,
      0x001d);
    if (ret_val)
     goto out;
    ret_val = igb_phy_reset_dsp(hw);
    if (ret_val)
     goto out;
   }
  }


  ret_val = igb_phy_has_link(hw, PHY_FORCE_LIMIT,
        100000, &link);
  if (ret_val)
   goto out;
 }

 if (hw->phy.type != e1000_phy_m88 ||
     hw->phy.id == 131 ||
     hw->phy.id == 130 ||
     hw->phy.id == 128 ||
     hw->phy.id == 129 ||
     hw->phy.id == 132)
  goto out;

 ret_val = phy->ops.read_reg(hw, M88E1000_EXT_PHY_SPEC_CTRL, &phy_data);
 if (ret_val)
  goto out;





 phy_data |= M88E1000_EPSCR_TX_CLK_25;
 ret_val = phy->ops.write_reg(hw, M88E1000_EXT_PHY_SPEC_CTRL, phy_data);
 if (ret_val)
  goto out;




 ret_val = phy->ops.read_reg(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
 if (ret_val)
  goto out;

 phy_data |= M88E1000_PSCR_ASSERT_CRS_ON_TX;
 ret_val = phy->ops.write_reg(hw, M88E1000_PHY_SPEC_CTRL, phy_data);

out:
 return ret_val;
}

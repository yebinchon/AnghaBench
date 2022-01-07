
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* write_reg ) (struct igc_hw*,int ,int) ;scalar_t__ (* read_reg ) (struct igc_hw*,int ,int*) ;} ;
struct igc_phy_info {scalar_t__ autoneg_wait_to_complete; TYPE_1__ ops; int autoneg_mask; int autoneg_advertised; } ;
struct TYPE_4__ {int get_link_status; } ;
struct igc_hw {TYPE_2__ mac; struct igc_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int MII_CR_AUTO_NEG_EN ;
 int MII_CR_RESTART_AUTO_NEG ;
 int PHY_CONTROL ;
 int hw_dbg (char*) ;
 scalar_t__ igc_phy_setup_autoneg (struct igc_hw*) ;
 scalar_t__ igc_wait_autoneg (struct igc_hw*) ;
 scalar_t__ stub1 (struct igc_hw*,int ,int*) ;
 scalar_t__ stub2 (struct igc_hw*,int ,int) ;

__attribute__((used)) static s32 igc_copper_link_autoneg(struct igc_hw *hw)
{
 struct igc_phy_info *phy = &hw->phy;
 u16 phy_ctrl;
 s32 ret_val;




 phy->autoneg_advertised &= phy->autoneg_mask;




 if (phy->autoneg_advertised == 0)
  phy->autoneg_advertised = phy->autoneg_mask;

 hw_dbg("Reconfiguring auto-neg advertisement params\n");
 ret_val = igc_phy_setup_autoneg(hw);
 if (ret_val) {
  hw_dbg("Error Setting up Auto-Negotiation\n");
  goto out;
 }
 hw_dbg("Restarting Auto-Neg\n");




 ret_val = phy->ops.read_reg(hw, PHY_CONTROL, &phy_ctrl);
 if (ret_val)
  goto out;

 phy_ctrl |= (MII_CR_AUTO_NEG_EN | MII_CR_RESTART_AUTO_NEG);
 ret_val = phy->ops.write_reg(hw, PHY_CONTROL, phy_ctrl);
 if (ret_val)
  goto out;




 if (phy->autoneg_wait_to_complete) {
  ret_val = igc_wait_autoneg(hw);
  if (ret_val) {
   hw_dbg("Error while waiting for autoneg to complete\n");
   goto out;
  }
 }

 hw->mac.get_link_status = 1;

out:
 return ret_val;
}

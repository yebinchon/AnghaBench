
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {scalar_t__ (* reset ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {int type; int id; TYPE_2__ ops; int reset_disable; } ;
struct TYPE_4__ {int type; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int E1000_82580_PHY_POWER_MGMT ;
 int E1000_82580_PM_GO_LINKD ;
 int E1000_CTRL ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_SLU ;
 scalar_t__ E1000_ERR_PHY ;
 int hw_dbg (char*) ;
 scalar_t__ igb_copper_link_setup_82580 (struct e1000_hw*) ;
 scalar_t__ igb_copper_link_setup_igp (struct e1000_hw*) ;
 scalar_t__ igb_copper_link_setup_m88 (struct e1000_hw*) ;
 scalar_t__ igb_copper_link_setup_m88_gen2 (struct e1000_hw*) ;
 scalar_t__ igb_setup_copper_link (struct e1000_hw*) ;
 scalar_t__ igb_setup_serdes_link_82575 (struct e1000_hw*) ;
 scalar_t__ igb_sgmii_active_82575 (struct e1000_hw*) ;
 int msleep (int) ;
 int rd32 (int ) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int wr32 (int ,int) ;

__attribute__((used)) static s32 igb_setup_copper_link_82575(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val;
 u32 phpm_reg;

 ctrl = rd32(E1000_CTRL);
 ctrl |= E1000_CTRL_SLU;
 ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
 wr32(E1000_CTRL, ctrl);


 switch (hw->mac.type) {
 case 136:
 case 133:
 case 135:
 case 134:
  phpm_reg = rd32(E1000_82580_PHY_POWER_MGMT);
  phpm_reg &= ~E1000_82580_PM_GO_LINKD;
  wr32(E1000_82580_PHY_POWER_MGMT, phpm_reg);
  break;
 default:
  break;
 }

 ret_val = igb_setup_serdes_link_82575(hw);
 if (ret_val)
  goto out;

 if (igb_sgmii_active_82575(hw) && !hw->phy.reset_disable) {

  msleep(300);

  ret_val = hw->phy.ops.reset(hw);
  if (ret_val) {
   hw_dbg("Error resetting the PHY.\n");
   goto out;
  }
 }
 switch (hw->phy.type) {
 case 130:
 case 128:
  switch (hw->phy.id) {
  case 140:
  case 139:
  case 137:
  case 138:
  case 141:
   ret_val = igb_copper_link_setup_m88_gen2(hw);
   break;
  default:
   ret_val = igb_copper_link_setup_m88(hw);
   break;
  }
  break;
 case 129:
  ret_val = igb_copper_link_setup_igp(hw);
  break;
 case 132:
  ret_val = igb_copper_link_setup_82580(hw);
  break;
 case 131:
  ret_val = 0;
  break;
 default:
  ret_val = -E1000_ERR_PHY;
  break;
 }

 if (ret_val)
  goto out;

 ret_val = igb_setup_copper_link(hw);
out:
 return ret_val;
}

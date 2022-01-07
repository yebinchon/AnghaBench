
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int BMCR_RESET ;
 int MII_BMCR ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int *) ;
 scalar_t__ e1e_wphy (struct e1000_hw*,int ,int ) ;
 int udelay (int) ;

s32 e1000e_phy_sw_reset(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 phy_ctrl;

 ret_val = e1e_rphy(hw, MII_BMCR, &phy_ctrl);
 if (ret_val)
  return ret_val;

 phy_ctrl |= BMCR_RESET;
 ret_val = e1e_wphy(hw, MII_BMCR, phy_ctrl);
 if (ret_val)
  return ret_val;

 udelay(1);

 return ret_val;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int dummy; } ;


 int BMCR_PDOWN ;
 int MII_BMCR ;
 int e1e_rphy (struct e1000_hw*,int ,int *) ;
 int e1e_wphy (struct e1000_hw*,int ,int ) ;
 int usleep_range (int,int) ;

void e1000_power_down_phy_copper(struct e1000_hw *hw)
{
 u16 mii_reg = 0;


 e1e_rphy(hw, MII_BMCR, &mii_reg);
 mii_reg |= BMCR_PDOWN;
 e1e_wphy(hw, MII_BMCR, mii_reg);
 usleep_range(1000, 2000);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pch_gbe_hw {int dummy; } ;


 int MII_CR_POWER_DOWN ;
 int PHY_CONTROL ;
 int mdelay (int) ;
 int pch_gbe_phy_read_reg_miic (struct pch_gbe_hw*,int ,int *) ;
 int pch_gbe_phy_write_reg_miic (struct pch_gbe_hw*,int ,int ) ;

void pch_gbe_phy_power_down(struct pch_gbe_hw *hw)
{
 u16 mii_reg;

 mii_reg = 0;





 pch_gbe_phy_read_reg_miic(hw, PHY_CONTROL, &mii_reg);
 mii_reg |= MII_CR_POWER_DOWN;
 pch_gbe_phy_write_reg_miic(hw, PHY_CONTROL, mii_reg);
 mdelay(1);
}

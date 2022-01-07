
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int KSZPHY_RMII_REF_CLK_SEL ;
 int MII_KSZPHY_CTRL ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int kszphy_rmii_clk_sel(struct phy_device *phydev, bool val)
{
 int ctrl;

 ctrl = phy_read(phydev, MII_KSZPHY_CTRL);
 if (ctrl < 0)
  return ctrl;

 if (val)
  ctrl |= KSZPHY_RMII_REF_CLK_SEL;
 else
  ctrl &= ~KSZPHY_RMII_REF_CLK_SEL;

 return phy_write(phydev, MII_KSZPHY_CTRL, ctrl);
}

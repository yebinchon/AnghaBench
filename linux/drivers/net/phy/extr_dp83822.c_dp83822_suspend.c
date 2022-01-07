
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int DP83822_DEVADDR ;
 int DP83822_WOL_EN ;
 int MII_DP83822_WOL_CFG ;
 int genphy_suspend (struct phy_device*) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

__attribute__((used)) static int dp83822_suspend(struct phy_device *phydev)
{
 int value;

 value = phy_read_mmd(phydev, DP83822_DEVADDR, MII_DP83822_WOL_CFG);

 if (!(value & DP83822_WOL_EN))
  genphy_suspend(phydev);

 return 0;
}

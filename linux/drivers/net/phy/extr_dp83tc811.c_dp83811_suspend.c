
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int DP83811_DEVADDR ;
 int DP83811_WOL_EN ;
 int MII_DP83811_WOL_CFG ;
 int genphy_suspend (struct phy_device*) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

__attribute__((used)) static int dp83811_suspend(struct phy_device *phydev)
{
 int value;

 value = phy_read_mmd(phydev, DP83811_DEVADDR, MII_DP83811_WOL_CFG);

 if (!(value & DP83811_WOL_EN))
  genphy_suspend(phydev);

 return 0;
}

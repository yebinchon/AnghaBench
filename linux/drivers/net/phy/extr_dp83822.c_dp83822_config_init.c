
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int DP83822_DEVADDR ;
 int DP83822_WOL_EN ;
 int DP83822_WOL_MAGIC_EN ;
 int DP83822_WOL_SECURE_ON ;
 int MII_DP83822_WOL_CFG ;
 int phy_write_mmd (struct phy_device*,int ,int ,int) ;

__attribute__((used)) static int dp83822_config_init(struct phy_device *phydev)
{
 int value;

 value = DP83822_WOL_MAGIC_EN | DP83822_WOL_SECURE_ON | DP83822_WOL_EN;

 return phy_write_mmd(phydev, DP83822_DEVADDR, MII_DP83822_WOL_CFG,
       value);
}

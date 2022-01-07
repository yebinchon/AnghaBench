
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int DP83822_DEVADDR ;
 int DP83822_WOL_CLR_INDICATION ;
 int MII_DP83822_WOL_CFG ;
 int genphy_resume (struct phy_device*) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;
 int phy_write_mmd (struct phy_device*,int ,int ,int) ;

__attribute__((used)) static int dp83822_resume(struct phy_device *phydev)
{
 int value;

 genphy_resume(phydev);

 value = phy_read_mmd(phydev, DP83822_DEVADDR, MII_DP83822_WOL_CFG);

 phy_write_mmd(phydev, DP83822_DEVADDR, MII_DP83822_WOL_CFG, value |
        DP83822_WOL_CLR_INDICATION);

 return 0;
}

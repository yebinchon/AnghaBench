
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int DP83811_DEVADDR ;
 int DP83811_WOL_CLR_INDICATION ;
 int MII_DP83811_WOL_CFG ;
 int genphy_resume (struct phy_device*) ;
 int phy_set_bits_mmd (struct phy_device*,int ,int ,int ) ;

__attribute__((used)) static int dp83811_resume(struct phy_device *phydev)
{
 genphy_resume(phydev);

 phy_set_bits_mmd(phydev, DP83811_DEVADDR, MII_DP83811_WOL_CFG,
    DP83811_WOL_CLR_INDICATION);

 return 0;
}

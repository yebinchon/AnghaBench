
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MDIO_AN_STAT1_COMPLETE ;
 int MDIO_MMD_AN ;
 int MDIO_STAT1 ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

int genphy_c45_aneg_done(struct phy_device *phydev)
{
 int val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_STAT1);

 return val < 0 ? val : val & MDIO_AN_STAT1_COMPLETE ? 1 : 0;
}

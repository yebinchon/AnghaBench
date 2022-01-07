
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MDIO_MMD_PCS ;
 scalar_t__ MDIO_STAT1 ;
 int MDIO_STAT1_LSTATUS ;
 scalar_t__ MV_PCS_BASE_R ;
 int genphy_c45_aneg_done (struct phy_device*) ;
 int phy_read_mmd (struct phy_device*,int ,scalar_t__) ;

__attribute__((used)) static int mv3310_aneg_done(struct phy_device *phydev)
{
 int val;

 val = phy_read_mmd(phydev, MDIO_MMD_PCS, MV_PCS_BASE_R + MDIO_STAT1);
 if (val < 0)
  return val;

 if (val & MDIO_STAT1_LSTATUS)
  return 1;

 return genphy_c45_aneg_done(phydev);
}

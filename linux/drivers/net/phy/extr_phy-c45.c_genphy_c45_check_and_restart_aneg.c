
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MDIO_AN_CTRL1_ENABLE ;
 int MDIO_CTRL1 ;
 int MDIO_MMD_AN ;
 int genphy_c45_restart_aneg (struct phy_device*) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

int genphy_c45_check_and_restart_aneg(struct phy_device *phydev, bool restart)
{
 int ret = 0;

 if (!restart) {

  ret = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_CTRL1);
  if (ret < 0)
   return ret;

  if (!(ret & MDIO_AN_CTRL1_ENABLE))
   restart = 1;
 }

 if (restart)
  ret = genphy_c45_restart_aneg(phydev);

 return ret;
}

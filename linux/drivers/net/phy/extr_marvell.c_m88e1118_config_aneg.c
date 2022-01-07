
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int mdix_ctrl; } ;


 int genphy_config_aneg (struct phy_device*) ;
 int genphy_soft_reset (struct phy_device*) ;
 int marvell_set_polarity (struct phy_device*,int ) ;

__attribute__((used)) static int m88e1118_config_aneg(struct phy_device *phydev)
{
 int err;

 err = genphy_soft_reset(phydev);
 if (err < 0)
  return err;

 err = marvell_set_polarity(phydev, phydev->mdix_ctrl);
 if (err < 0)
  return err;

 err = genphy_config_aneg(phydev);
 return 0;
}

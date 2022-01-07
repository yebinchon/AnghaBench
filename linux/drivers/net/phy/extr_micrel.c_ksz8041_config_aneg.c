
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dev_flags; int speed; } ;


 int MICREL_PHY_FXEN ;
 int SPEED_100 ;
 int genphy_config_aneg (struct phy_device*) ;

__attribute__((used)) static int ksz8041_config_aneg(struct phy_device *phydev)
{

 if (phydev->dev_flags & MICREL_PHY_FXEN) {
  phydev->speed = SPEED_100;
  return 0;
 }

 return genphy_config_aneg(phydev);
}

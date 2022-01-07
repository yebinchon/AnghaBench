
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; scalar_t__ speed; } ;


 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ SPEED_100 ;
 int genphy_config_aneg (struct phy_device*) ;
 int genphy_setup_forced (struct phy_device*) ;
 int vsc82x4_config_autocross_enable (struct phy_device*) ;

__attribute__((used)) static int vsc82x4_config_aneg(struct phy_device *phydev)
{
 int ret;




 if (phydev->autoneg != AUTONEG_ENABLE && phydev->speed <= SPEED_100) {
  ret = genphy_setup_forced(phydev);

  if (ret < 0)
   return ret;

  return vsc82x4_config_autocross_enable(phydev);
 }

 return genphy_config_aneg(phydev);
}

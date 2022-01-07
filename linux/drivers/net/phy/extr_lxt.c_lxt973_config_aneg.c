
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ priv; } ;


 int genphy_config_aneg (struct phy_device*) ;

__attribute__((used)) static int lxt973_config_aneg(struct phy_device *phydev)
{

 return phydev->priv ? 0 : genphy_config_aneg(phydev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int adin_config_mdix (struct phy_device*) ;
 int genphy_config_aneg (struct phy_device*) ;

__attribute__((used)) static int adin_config_aneg(struct phy_device *phydev)
{
 int ret;

 ret = adin_config_mdix(phydev);
 if (ret)
  return ret;

 return genphy_config_aneg(phydev);
}

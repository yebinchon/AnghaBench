
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int mdix_ctrl; } ;


 int genphy_config_aneg (struct phy_device*) ;
 int vsc85xx_mdix_set (struct phy_device*,int ) ;

__attribute__((used)) static int vsc85xx_config_aneg(struct phy_device *phydev)
{
 int rc;

 rc = vsc85xx_mdix_set(phydev, phydev->mdix_ctrl);
 if (rc < 0)
  return rc;

 return genphy_config_aneg(phydev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int genphy_config_aneg (struct phy_device*) ;
 int lan88xx_set_mdix (struct phy_device*) ;

__attribute__((used)) static int lan88xx_config_aneg(struct phy_device *phydev)
{
 lan88xx_set_mdix(phydev);

 return genphy_config_aneg(phydev);
}

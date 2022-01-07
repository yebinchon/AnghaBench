
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int devices_in_package; } ;
struct phy_device {TYPE_2__ c45_ids; scalar_t__ is_c45; TYPE_1__* drv; } ;
struct TYPE_3__ {int (* config_aneg ) (struct phy_device*) ;} ;


 int BIT (int ) ;
 int genphy_c45_config_aneg (struct phy_device*) ;
 int genphy_config_aneg (struct phy_device*) ;
 int stub1 (struct phy_device*) ;

__attribute__((used)) static int phy_config_aneg(struct phy_device *phydev)
{
 if (phydev->drv->config_aneg)
  return phydev->drv->config_aneg(phydev);




 if (phydev->is_c45 && !(phydev->c45_ids.devices_in_package & BIT(0)))
  return genphy_c45_config_aneg(phydev);

 return genphy_config_aneg(phydev);
}

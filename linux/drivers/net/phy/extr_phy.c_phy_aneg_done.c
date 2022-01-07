
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {scalar_t__ is_c45; TYPE_1__* drv; } ;
struct TYPE_2__ {int (* aneg_done ) (struct phy_device*) ;} ;


 int genphy_aneg_done (struct phy_device*) ;
 int genphy_c45_aneg_done (struct phy_device*) ;
 int stub1 (struct phy_device*) ;

int phy_aneg_done(struct phy_device *phydev)
{
 if (phydev->drv && phydev->drv->aneg_done)
  return phydev->drv->aneg_done(phydev);
 else if (phydev->is_c45)
  return genphy_c45_aneg_done(phydev);
 else
  return genphy_aneg_done(phydev);
}

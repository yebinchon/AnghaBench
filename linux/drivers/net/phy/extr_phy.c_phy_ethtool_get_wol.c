
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {TYPE_1__* drv; } ;
struct ethtool_wolinfo {int dummy; } ;
struct TYPE_2__ {int (* get_wol ) (struct phy_device*,struct ethtool_wolinfo*) ;} ;


 int stub1 (struct phy_device*,struct ethtool_wolinfo*) ;

void phy_ethtool_get_wol(struct phy_device *phydev, struct ethtool_wolinfo *wol)
{
 if (phydev->drv && phydev->drv->get_wol)
  phydev->drv->get_wol(phydev, wol);
}

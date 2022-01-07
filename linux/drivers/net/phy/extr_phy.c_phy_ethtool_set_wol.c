
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {TYPE_1__* drv; } ;
struct ethtool_wolinfo {int dummy; } ;
struct TYPE_2__ {int (* set_wol ) (struct phy_device*,struct ethtool_wolinfo*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct phy_device*,struct ethtool_wolinfo*) ;

int phy_ethtool_set_wol(struct phy_device *phydev, struct ethtool_wolinfo *wol)
{
 if (phydev->drv && phydev->drv->set_wol)
  return phydev->drv->set_wol(phydev, wol);

 return -EOPNOTSUPP;
}

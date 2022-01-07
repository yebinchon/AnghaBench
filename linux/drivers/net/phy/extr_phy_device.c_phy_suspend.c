
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_driver {int (* suspend ) (struct phy_device*) ;} ;
struct TYPE_3__ {int driver; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct phy_device {int suspended; scalar_t__ drv; struct net_device* attached_dev; TYPE_2__ mdio; } ;
struct net_device {scalar_t__ wol_enabled; } ;
struct ethtool_wolinfo {scalar_t__ wolopts; int cmd; } ;


 int EBUSY ;
 int ETHTOOL_GWOL ;
 int phy_ethtool_get_wol (struct phy_device*,struct ethtool_wolinfo*) ;
 int stub1 (struct phy_device*) ;
 struct phy_driver* to_phy_driver (int ) ;

int phy_suspend(struct phy_device *phydev)
{
 struct phy_driver *phydrv = to_phy_driver(phydev->mdio.dev.driver);
 struct net_device *netdev = phydev->attached_dev;
 struct ethtool_wolinfo wol = { .cmd = ETHTOOL_GWOL };
 int ret = 0;


 phy_ethtool_get_wol(phydev, &wol);
 if (wol.wolopts || (netdev && netdev->wol_enabled))
  return -EBUSY;

 if (phydev->drv && phydrv->suspend)
  ret = phydrv->suspend(phydev);

 if (ret)
  return ret;

 phydev->suspended = 1;

 return ret;
}

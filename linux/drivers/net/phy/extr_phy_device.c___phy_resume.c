
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_driver {int (* resume ) (struct phy_device*) ;} ;
struct TYPE_3__ {int driver; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct phy_device {int suspended; scalar_t__ drv; int lock; TYPE_2__ mdio; } ;


 int WARN_ON (int) ;
 int mutex_is_locked (int *) ;
 int stub1 (struct phy_device*) ;
 struct phy_driver* to_phy_driver (int ) ;

int __phy_resume(struct phy_device *phydev)
{
 struct phy_driver *phydrv = to_phy_driver(phydev->mdio.dev.driver);
 int ret = 0;

 WARN_ON(!mutex_is_locked(&phydev->lock));

 if (phydev->drv && phydrv->resume)
  ret = phydrv->resume(phydev);

 if (ret)
  return ret;

 phydev->suspended = 0;

 return ret;
}

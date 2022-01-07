
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_driver {int (* set_loopback ) (struct phy_device*,int) ;} ;
struct TYPE_3__ {int driver; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct phy_device {int loopback_enabled; int lock; scalar_t__ drv; TYPE_2__ mdio; } ;


 int EBUSY ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct phy_device*,int) ;
 struct phy_driver* to_phy_driver (int ) ;

int phy_loopback(struct phy_device *phydev, bool enable)
{
 struct phy_driver *phydrv = to_phy_driver(phydev->mdio.dev.driver);
 int ret = 0;

 mutex_lock(&phydev->lock);

 if (enable && phydev->loopback_enabled) {
  ret = -EBUSY;
  goto out;
 }

 if (!enable && !phydev->loopback_enabled) {
  ret = -EINVAL;
  goto out;
 }

 if (phydev->drv && phydrv->set_loopback)
  ret = phydrv->set_loopback(phydev, enable);
 else
  ret = -EOPNOTSUPP;

 if (ret)
  goto out;

 phydev->loopback_enabled = enable;

out:
 mutex_unlock(&phydev->lock);
 return ret;
}

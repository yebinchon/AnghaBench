
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {TYPE_1__* drv; int lock; int state; int state_queue; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* remove ) (struct phy_device*) ;} ;


 int PHY_DOWN ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_device_reset (struct phy_device*,int) ;
 int stub1 (struct phy_device*) ;
 struct phy_device* to_phy_device (struct device*) ;

__attribute__((used)) static int phy_remove(struct device *dev)
{
 struct phy_device *phydev = to_phy_device(dev);

 cancel_delayed_work_sync(&phydev->state_queue);

 mutex_lock(&phydev->lock);
 phydev->state = PHY_DOWN;
 mutex_unlock(&phydev->lock);

 if (phydev->drv && phydev->drv->remove) {
  phydev->drv->remove(phydev);


  phy_device_reset(phydev, 1);
 }
 phydev->drv = ((void*)0);

 return 0;
}

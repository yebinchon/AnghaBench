
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int lock; int state; int state_queue; } ;


 int PHY_UP ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ phy_is_started (struct phy_device*) ;

void phy_stop_machine(struct phy_device *phydev)
{
 cancel_delayed_work_sync(&phydev->state_queue);

 mutex_lock(&phydev->lock);
 if (phy_is_started(phydev))
  phydev->state = PHY_UP;
 mutex_unlock(&phydev->lock);
}

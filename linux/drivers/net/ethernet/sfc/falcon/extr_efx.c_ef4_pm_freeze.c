
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {scalar_t__ state; } ;
struct device {int dummy; } ;


 scalar_t__ STATE_DISABLED ;
 scalar_t__ STATE_UNINIT ;
 struct ef4_nic* dev_get_drvdata (struct device*) ;
 int ef4_device_detach_sync (struct ef4_nic*) ;
 int ef4_disable_interrupts (struct ef4_nic*) ;
 int ef4_stop_all (struct ef4_nic*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int ef4_pm_freeze(struct device *dev)
{
 struct ef4_nic *efx = dev_get_drvdata(dev);

 rtnl_lock();

 if (efx->state != STATE_DISABLED) {
  efx->state = STATE_UNINIT;

  ef4_device_detach_sync(efx);

  ef4_stop_all(efx);
  ef4_disable_interrupts(efx);
 }

 rtnl_unlock();

 return 0;
}

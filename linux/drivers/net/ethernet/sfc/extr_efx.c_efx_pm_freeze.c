
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {scalar_t__ state; } ;
struct device {int dummy; } ;


 scalar_t__ STATE_DISABLED ;
 scalar_t__ STATE_UNINIT ;
 struct efx_nic* dev_get_drvdata (struct device*) ;
 int efx_device_detach_sync (struct efx_nic*) ;
 int efx_disable_interrupts (struct efx_nic*) ;
 int efx_stop_all (struct efx_nic*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int efx_pm_freeze(struct device *dev)
{
 struct efx_nic *efx = dev_get_drvdata(dev);

 rtnl_lock();

 if (efx->state != STATE_DISABLED) {
  efx->state = STATE_UNINIT;

  efx_device_detach_sync(efx);

  efx_stop_all(efx);
  efx_disable_interrupts(efx);
 }

 rtnl_unlock();

 return 0;
}

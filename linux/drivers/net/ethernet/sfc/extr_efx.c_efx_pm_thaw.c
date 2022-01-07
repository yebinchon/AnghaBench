
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_nic {scalar_t__ state; int reset_work; TYPE_1__* type; int mac_lock; TYPE_2__* phy_op; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int (* reconfigure ) (struct efx_nic*) ;} ;
struct TYPE_3__ {int (* resume_wol ) (struct efx_nic*) ;} ;


 scalar_t__ STATE_DISABLED ;
 scalar_t__ STATE_READY ;
 struct efx_nic* dev_get_drvdata (struct device*) ;
 int efx_device_attach_if_not_resetting (struct efx_nic*) ;
 int efx_enable_interrupts (struct efx_nic*) ;
 int efx_start_all (struct efx_nic*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;
 int reset_workqueue ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (struct efx_nic*) ;
 int stub2 (struct efx_nic*) ;

__attribute__((used)) static int efx_pm_thaw(struct device *dev)
{
 int rc;
 struct efx_nic *efx = dev_get_drvdata(dev);

 rtnl_lock();

 if (efx->state != STATE_DISABLED) {
  rc = efx_enable_interrupts(efx);
  if (rc)
   goto fail;

  mutex_lock(&efx->mac_lock);
  efx->phy_op->reconfigure(efx);
  mutex_unlock(&efx->mac_lock);

  efx_start_all(efx);

  efx_device_attach_if_not_resetting(efx);

  efx->state = STATE_READY;

  efx->type->resume_wol(efx);
 }

 rtnl_unlock();


 queue_work(reset_workqueue, &efx->reset_work);

 return 0;

fail:
 rtnl_unlock();

 return rc;
}

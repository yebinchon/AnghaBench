
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ef4_nic {scalar_t__ state; int reset_work; TYPE_2__* type; int net_dev; int mac_lock; TYPE_1__* phy_op; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int (* resume_wol ) (struct ef4_nic*) ;} ;
struct TYPE_3__ {int (* reconfigure ) (struct ef4_nic*) ;} ;


 scalar_t__ STATE_DISABLED ;
 scalar_t__ STATE_READY ;
 struct ef4_nic* dev_get_drvdata (struct device*) ;
 int ef4_enable_interrupts (struct ef4_nic*) ;
 int ef4_start_all (struct ef4_nic*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_device_attach (int ) ;
 int queue_work (int ,int *) ;
 int reset_workqueue ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (struct ef4_nic*) ;
 int stub2 (struct ef4_nic*) ;

__attribute__((used)) static int ef4_pm_thaw(struct device *dev)
{
 int rc;
 struct ef4_nic *efx = dev_get_drvdata(dev);

 rtnl_lock();

 if (efx->state != STATE_DISABLED) {
  rc = ef4_enable_interrupts(efx);
  if (rc)
   goto fail;

  mutex_lock(&efx->mac_lock);
  efx->phy_op->reconfigure(efx);
  mutex_unlock(&efx->mac_lock);

  ef4_start_all(efx);

  netif_device_attach(efx->net_dev);

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

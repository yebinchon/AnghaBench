
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ef4_nic {int port_initialized; int mac_lock; int filter_sem; int net_dev; TYPE_2__* phy_op; TYPE_1__* type; } ;
typedef enum reset_type { ____Placeholder_reset_type } reset_type ;
struct TYPE_4__ {int (* init ) (struct ef4_nic*) ;int (* reconfigure ) (struct ef4_nic*) ;} ;
struct TYPE_3__ {int (* init ) (struct ef4_nic*) ;} ;


 int EF4_ASSERT_RESET_SERIALISED (struct ef4_nic*) ;
 int EPERM ;
 int RESET_TYPE_DATAPATH ;
 int RESET_TYPE_INVISIBLE ;
 int down_read (int *) ;
 int drv ;
 int ef4_enable_interrupts (struct ef4_nic*) ;
 int ef4_restore_filters (struct ef4_nic*) ;
 int ef4_start_all (struct ef4_nic*) ;
 int mutex_unlock (int *) ;
 int netif_err (struct ef4_nic*,int ,int ,char*) ;
 int stub1 (struct ef4_nic*) ;
 int stub2 (struct ef4_nic*) ;
 int stub3 (struct ef4_nic*) ;
 int up_read (int *) ;

int ef4_reset_up(struct ef4_nic *efx, enum reset_type method, bool ok)
{
 int rc;

 EF4_ASSERT_RESET_SERIALISED(efx);


 rc = efx->type->init(efx);
 if (rc) {
  netif_err(efx, drv, efx->net_dev, "failed to initialise NIC\n");
  goto fail;
 }

 if (!ok)
  goto fail;

 if (efx->port_initialized && method != RESET_TYPE_INVISIBLE &&
     method != RESET_TYPE_DATAPATH) {
  rc = efx->phy_op->init(efx);
  if (rc)
   goto fail;
  rc = efx->phy_op->reconfigure(efx);
  if (rc && rc != -EPERM)
   netif_err(efx, drv, efx->net_dev,
      "could not restore PHY settings\n");
 }

 rc = ef4_enable_interrupts(efx);
 if (rc)
  goto fail;

 down_read(&efx->filter_sem);
 ef4_restore_filters(efx);
 up_read(&efx->filter_sem);

 mutex_unlock(&efx->mac_lock);

 ef4_start_all(efx);

 return 0;

fail:
 efx->port_initialized = 0;

 mutex_unlock(&efx->mac_lock);

 return rc;
}

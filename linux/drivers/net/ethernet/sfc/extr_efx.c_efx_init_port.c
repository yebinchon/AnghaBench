
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {int port_initialized; int mac_lock; TYPE_1__* phy_op; int net_dev; } ;
struct TYPE_2__ {int (* init ) (struct efx_nic*) ;int (* reconfigure ) (struct efx_nic*) ;int (* fini ) (struct efx_nic*) ;} ;


 int EPERM ;
 int drv ;
 int efx_mac_reconfigure (struct efx_nic*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int stub1 (struct efx_nic*) ;
 int stub2 (struct efx_nic*) ;
 int stub3 (struct efx_nic*) ;

__attribute__((used)) static int efx_init_port(struct efx_nic *efx)
{
 int rc;

 netif_dbg(efx, drv, efx->net_dev, "init port\n");

 mutex_lock(&efx->mac_lock);

 rc = efx->phy_op->init(efx);
 if (rc)
  goto fail1;

 efx->port_initialized = 1;



 efx_mac_reconfigure(efx);


 rc = efx->phy_op->reconfigure(efx);
 if (rc && rc != -EPERM)
  goto fail2;

 mutex_unlock(&efx->mac_lock);
 return 0;

fail2:
 efx->phy_op->fini(efx);
fail1:
 mutex_unlock(&efx->mac_lock);
 return rc;
}

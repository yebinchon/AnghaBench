
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {int reset_pending; int net_dev; int state; int pci_dev; TYPE_1__* type; } ;
typedef enum reset_type { ____Placeholder_reset_type } reset_type ;
struct TYPE_2__ {int (* reset ) (struct ef4_nic*,int) ;} ;


 int RESET_TYPE (int) ;
 int RESET_TYPE_DISABLE ;
 int RESET_TYPE_MAX_METHOD ;
 int RESET_TYPE_RECOVER_OR_DISABLE ;
 int STATE_DISABLED ;
 int __clear_bit (int,int*) ;
 int dev_close (int ) ;
 int drv ;
 int ef4_device_detach_sync (struct ef4_nic*) ;
 int ef4_reset_down (struct ef4_nic*,int) ;
 int ef4_reset_up (struct ef4_nic*,int,int) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*) ;
 int netif_device_attach (int ) ;
 int netif_err (struct ef4_nic*,int ,int ,char*) ;
 int netif_info (struct ef4_nic*,int ,int ,char*,int ) ;
 int pci_set_master (int ) ;
 int stub1 (struct ef4_nic*,int) ;

int ef4_reset(struct ef4_nic *efx, enum reset_type method)
{
 int rc, rc2;
 bool disabled;

 netif_info(efx, drv, efx->net_dev, "resetting (%s)\n",
     RESET_TYPE(method));

 ef4_device_detach_sync(efx);
 ef4_reset_down(efx, method);

 rc = efx->type->reset(efx, method);
 if (rc) {
  netif_err(efx, drv, efx->net_dev, "failed to reset hardware\n");
  goto out;
 }




 if (method < RESET_TYPE_MAX_METHOD)
  efx->reset_pending &= -(1 << (method + 1));
 else
  __clear_bit(method, &efx->reset_pending);





 pci_set_master(efx->pci_dev);

out:

 disabled = rc ||
  method == RESET_TYPE_DISABLE ||
  method == RESET_TYPE_RECOVER_OR_DISABLE;
 rc2 = ef4_reset_up(efx, method, !disabled);
 if (rc2) {
  disabled = 1;
  if (!rc)
   rc = rc2;
 }

 if (disabled) {
  dev_close(efx->net_dev);
  netif_err(efx, drv, efx->net_dev, "has been disabled\n");
  efx->state = STATE_DISABLED;
 } else {
  netif_dbg(efx, drv, efx->net_dev, "reset complete\n");
  netif_device_attach(efx->net_dev);
 }
 return rc;
}

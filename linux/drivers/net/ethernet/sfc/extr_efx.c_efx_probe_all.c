
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; int net_dev; scalar_t__ txq_entries; scalar_t__ rxq_entries; } ;
struct TYPE_2__ {int (* vswitching_probe ) (struct efx_nic*) ;int (* vswitching_remove ) (struct efx_nic*) ;} ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ EFX_DEFAULT_DMAQ_SIZE ;
 scalar_t__ EFX_RXQ_MIN_ENT ;
 scalar_t__ EFX_TXQ_MIN_ENT (struct efx_nic*) ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int efx_probe_channels (struct efx_nic*) ;
 int efx_probe_filters (struct efx_nic*) ;
 int efx_probe_nic (struct efx_nic*) ;
 int efx_probe_port (struct efx_nic*) ;
 int efx_remove_filters (struct efx_nic*) ;
 int efx_remove_nic (struct efx_nic*) ;
 int efx_remove_port (struct efx_nic*) ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;
 int netif_warn (struct efx_nic*,int ,int ,char*,int) ;
 int probe ;
 int stub1 (struct efx_nic*) ;
 int stub2 (struct efx_nic*) ;

__attribute__((used)) static int efx_probe_all(struct efx_nic *efx)
{
 int rc;

 rc = efx_probe_nic(efx);
 if (rc) {
  netif_err(efx, probe, efx->net_dev, "failed to create NIC\n");
  goto fail1;
 }

 rc = efx_probe_port(efx);
 if (rc) {
  netif_err(efx, probe, efx->net_dev, "failed to create port\n");
  goto fail2;
 }

 BUILD_BUG_ON(EFX_DEFAULT_DMAQ_SIZE < EFX_RXQ_MIN_ENT);
 if (WARN_ON(EFX_DEFAULT_DMAQ_SIZE < EFX_TXQ_MIN_ENT(efx))) {
  rc = -EINVAL;
  goto fail3;
 }
 efx->rxq_entries = efx->txq_entries = EFX_DEFAULT_DMAQ_SIZE;
 rc = efx_probe_filters(efx);
 if (rc) {
  netif_err(efx, probe, efx->net_dev,
     "failed to create filter tables\n");
  goto fail4;
 }

 rc = efx_probe_channels(efx);
 if (rc)
  goto fail5;

 return 0;

 fail5:
 efx_remove_filters(efx);
 fail4:



 fail3:
 efx_remove_port(efx);
 fail2:
 efx_remove_nic(efx);
 fail1:
 return rc;
}

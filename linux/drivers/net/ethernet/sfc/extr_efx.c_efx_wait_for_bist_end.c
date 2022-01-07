
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int mc_bist_for_other_fn; int net_dev; } ;


 int BIST_WAIT_DELAY_COUNT ;
 int BIST_WAIT_DELAY_MS ;
 int drv ;
 scalar_t__ efx_mcdi_poll_reboot (struct efx_nic*) ;
 int msleep (int ) ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;

__attribute__((used)) static void efx_wait_for_bist_end(struct efx_nic *efx)
{
 int i;

 for (i = 0; i < BIST_WAIT_DELAY_COUNT; ++i) {
  if (efx_mcdi_poll_reboot(efx))
   goto out;
  msleep(BIST_WAIT_DELAY_MS);
 }

 netif_err(efx, drv, efx->net_dev, "Warning: No MC reboot after BIST mode\n");
out:



 efx->mc_bist_for_other_fn = 0;
}

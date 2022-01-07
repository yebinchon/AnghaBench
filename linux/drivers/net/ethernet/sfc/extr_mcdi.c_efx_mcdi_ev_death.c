
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; } ;
struct efx_mcdi_iface {scalar_t__ mode; int resprc; int new_epoch; int iface_lock; int credits; scalar_t__ resp_data_len; scalar_t__ resp_hdr_len; } ;
struct TYPE_2__ {int (* mcdi_reboot_detected ) (struct efx_nic*) ;} ;


 scalar_t__ MCDI_MODE_EVENTS ;
 int MCDI_STATUS_DELAY_COUNT ;
 int MCDI_STATUS_DELAY_US ;
 int RESET_TYPE_MC_FAILURE ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 scalar_t__ efx_mcdi_complete_sync (struct efx_mcdi_iface*) ;
 int efx_mcdi_poll_reboot (struct efx_nic*) ;
 int efx_mcdi_proxy_abort (struct efx_mcdi_iface*) ;
 int efx_schedule_reset (struct efx_nic*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct efx_nic*) ;
 int udelay (int ) ;

__attribute__((used)) static void efx_mcdi_ev_death(struct efx_nic *efx, int rc)
{
 struct efx_mcdi_iface *mcdi = efx_mcdi(efx);
 spin_lock(&mcdi->iface_lock);
 efx_mcdi_proxy_abort(mcdi);

 if (efx_mcdi_complete_sync(mcdi)) {
  if (mcdi->mode == MCDI_MODE_EVENTS) {
   mcdi->resprc = rc;
   mcdi->resp_hdr_len = 0;
   mcdi->resp_data_len = 0;
   ++mcdi->credits;
  }
 } else {
  int count;


  for (count = 0; count < MCDI_STATUS_DELAY_COUNT; ++count) {
   rc = efx_mcdi_poll_reboot(efx);
   if (rc)
    break;
   udelay(MCDI_STATUS_DELAY_US);
  }







  if (!rc && efx->type->mcdi_reboot_detected)
   efx->type->mcdi_reboot_detected(efx);

  mcdi->new_epoch = 1;


  efx_schedule_reset(efx, RESET_TYPE_MC_FAILURE);
 }

 spin_unlock(&mcdi->iface_lock);
}

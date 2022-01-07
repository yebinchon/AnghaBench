
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int mc_bist_for_other_fn; } ;
struct efx_mcdi_iface {scalar_t__ mode; int new_epoch; int iface_lock; int credits; scalar_t__ resp_data_len; scalar_t__ resp_hdr_len; int resprc; } ;


 int EIO ;
 scalar_t__ MCDI_MODE_EVENTS ;
 int RESET_TYPE_MC_BIST ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 scalar_t__ efx_mcdi_complete_sync (struct efx_mcdi_iface*) ;
 int efx_mcdi_proxy_abort (struct efx_mcdi_iface*) ;
 int efx_schedule_reset (struct efx_nic*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void efx_mcdi_ev_bist(struct efx_nic *efx)
{
 struct efx_mcdi_iface *mcdi = efx_mcdi(efx);

 spin_lock(&mcdi->iface_lock);
 efx->mc_bist_for_other_fn = 1;
 efx_mcdi_proxy_abort(mcdi);

 if (efx_mcdi_complete_sync(mcdi)) {
  if (mcdi->mode == MCDI_MODE_EVENTS) {
   mcdi->resprc = -EIO;
   mcdi->resp_hdr_len = 0;
   mcdi->resp_data_len = 0;
   ++mcdi->credits;
  }
 }
 mcdi->new_epoch = 1;
 efx_schedule_reset(efx, RESET_TYPE_MC_BIST);
 spin_unlock(&mcdi->iface_lock);
}

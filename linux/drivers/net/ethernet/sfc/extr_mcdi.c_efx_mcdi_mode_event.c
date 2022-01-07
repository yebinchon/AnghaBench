
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int mcdi; } ;
struct efx_mcdi_iface {scalar_t__ mode; } ;


 scalar_t__ MCDI_MODE_EVENTS ;
 scalar_t__ MCDI_MODE_FAIL ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int efx_mcdi_acquire_sync (struct efx_mcdi_iface*) ;
 int efx_mcdi_release (struct efx_mcdi_iface*) ;

void efx_mcdi_mode_event(struct efx_nic *efx)
{
 struct efx_mcdi_iface *mcdi;

 if (!efx->mcdi)
  return;

 mcdi = efx_mcdi(efx);




 if (mcdi->mode == MCDI_MODE_EVENTS || mcdi->mode == MCDI_MODE_FAIL)
  return;
 efx_mcdi_acquire_sync(mcdi);
 mcdi->mode = MCDI_MODE_EVENTS;
 efx_mcdi_release(mcdi);
}

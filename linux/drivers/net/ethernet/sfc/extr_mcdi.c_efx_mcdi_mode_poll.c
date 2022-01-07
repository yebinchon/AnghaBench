
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int mcdi; } ;
struct efx_mcdi_iface {scalar_t__ mode; } ;


 scalar_t__ MCDI_MODE_FAIL ;
 scalar_t__ MCDI_MODE_POLL ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int efx_mcdi_complete_sync (struct efx_mcdi_iface*) ;

void efx_mcdi_mode_poll(struct efx_nic *efx)
{
 struct efx_mcdi_iface *mcdi;

 if (!efx->mcdi)
  return;

 mcdi = efx_mcdi(efx);




 if (mcdi->mode == MCDI_MODE_POLL || mcdi->mode == MCDI_MODE_FAIL)
  return;
 mcdi->mode = MCDI_MODE_POLL;

 efx_mcdi_complete_sync(mcdi);
}

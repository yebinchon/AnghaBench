
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int ** extra_channel_type; } ;


 size_t EFX_EXTRA_CHANNEL_PTP ;
 int efx_ptp_channel_type ;
 scalar_t__ efx_ptp_disable (struct efx_nic*) ;

void efx_ptp_defer_probe_with_channel(struct efx_nic *efx)
{



 if (efx_ptp_disable(efx) == 0)
  efx->extra_channel_type[EFX_EXTRA_CHANNEL_PTP] =
   &efx_ptp_channel_type;
}

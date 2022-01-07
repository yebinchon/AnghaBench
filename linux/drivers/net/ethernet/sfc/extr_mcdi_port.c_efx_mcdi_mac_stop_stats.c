
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int EFX_STATS_DISABLE ;
 int efx_mcdi_mac_stats (struct efx_nic*,int ,int ) ;

void efx_mcdi_mac_stop_stats(struct efx_nic *efx)
{
 efx_mcdi_mac_stats(efx, EFX_STATS_DISABLE, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * addr; } ;
struct efx_nic {int num_mac_stats; TYPE_1__ stats_buffer; } ;
typedef int __le64 ;


 int EFX_MC_STATS_GENERATION_INVALID ;
 int EFX_STATS_ENABLE ;
 int efx_mcdi_mac_stats (struct efx_nic*,int ,int ) ;

void efx_mcdi_mac_start_stats(struct efx_nic *efx)
{
 __le64 *dma_stats = efx->stats_buffer.addr;

 dma_stats[efx->num_mac_stats - 1] = EFX_MC_STATS_GENERATION_INVALID;

 efx_mcdi_mac_stats(efx, EFX_STATS_ENABLE, 0);
}

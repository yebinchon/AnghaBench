
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* addr; } ;
struct efx_nic {int num_mac_stats; TYPE_1__ stats_buffer; } ;
typedef scalar_t__ __le64 ;


 int EFX_MAC_STATS_WAIT_ATTEMPTS ;
 int EFX_MAC_STATS_WAIT_US ;
 scalar_t__ EFX_MC_STATS_GENERATION_INVALID ;
 int EFX_STATS_PULL ;
 int efx_mcdi_mac_stats (struct efx_nic*,int ,int ) ;
 int udelay (int ) ;

void efx_mcdi_mac_pull_stats(struct efx_nic *efx)
{
 __le64 *dma_stats = efx->stats_buffer.addr;
 int attempts = EFX_MAC_STATS_WAIT_ATTEMPTS;

 dma_stats[efx->num_mac_stats - 1] = EFX_MC_STATS_GENERATION_INVALID;
 efx_mcdi_mac_stats(efx, EFX_STATS_PULL, 0);

 while (dma_stats[efx->num_mac_stats - 1] ==
    EFX_MC_STATS_GENERATION_INVALID &&
   attempts-- != 0)
  udelay(EFX_MAC_STATS_WAIT_US);
}

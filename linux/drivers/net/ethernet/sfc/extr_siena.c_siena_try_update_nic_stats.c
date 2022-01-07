
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct siena_nic_data {scalar_t__* stats; } ;
struct TYPE_2__ {scalar_t__* addr; } ;
struct efx_nic {int num_mac_stats; TYPE_1__ stats_buffer; struct siena_nic_data* nic_data; } ;
typedef scalar_t__ __le64 ;


 int EAGAIN ;
 scalar_t__ EFX_MC_STATS_GENERATION_INVALID ;
 size_t MC_CMD_MAC_GENERATION_START ;
 int SIENA_STAT_COUNT ;
 size_t SIENA_STAT_rx_bad_bytes ;
 size_t SIENA_STAT_rx_bytes ;
 size_t SIENA_STAT_rx_good_bytes ;
 size_t SIENA_STAT_rx_nodesc_drop_cnt ;
 size_t SIENA_STAT_tx_bad_bytes ;
 size_t SIENA_STAT_tx_bytes ;
 size_t SIENA_STAT_tx_collision ;
 size_t SIENA_STAT_tx_excessive_collision ;
 size_t SIENA_STAT_tx_good_bytes ;
 size_t SIENA_STAT_tx_late_collision ;
 size_t SIENA_STAT_tx_multiple_collision ;
 size_t SIENA_STAT_tx_single_collision ;
 int efx_nic_fix_nodesc_drop_stat (struct efx_nic*,scalar_t__*) ;
 int efx_nic_update_stats (int ,int ,int ,scalar_t__*,scalar_t__*,int) ;
 int efx_update_diff_stat (scalar_t__*,scalar_t__) ;
 int efx_update_sw_stats (struct efx_nic*,scalar_t__*) ;
 int rmb () ;
 int siena_stat_desc ;
 int siena_stat_mask ;

__attribute__((used)) static int siena_try_update_nic_stats(struct efx_nic *efx)
{
 struct siena_nic_data *nic_data = efx->nic_data;
 u64 *stats = nic_data->stats;
 __le64 *dma_stats;
 __le64 generation_start, generation_end;

 dma_stats = efx->stats_buffer.addr;

 generation_end = dma_stats[efx->num_mac_stats - 1];
 if (generation_end == EFX_MC_STATS_GENERATION_INVALID)
  return 0;
 rmb();
 efx_nic_update_stats(siena_stat_desc, SIENA_STAT_COUNT, siena_stat_mask,
        stats, efx->stats_buffer.addr, 0);
 rmb();
 generation_start = dma_stats[MC_CMD_MAC_GENERATION_START];
 if (generation_end != generation_start)
  return -EAGAIN;


 efx_nic_fix_nodesc_drop_stat(efx,
         &stats[SIENA_STAT_rx_nodesc_drop_cnt]);
 efx_update_diff_stat(&stats[SIENA_STAT_tx_good_bytes],
        stats[SIENA_STAT_tx_bytes] -
        stats[SIENA_STAT_tx_bad_bytes]);
 stats[SIENA_STAT_tx_collision] =
  stats[SIENA_STAT_tx_single_collision] +
  stats[SIENA_STAT_tx_multiple_collision] +
  stats[SIENA_STAT_tx_excessive_collision] +
  stats[SIENA_STAT_tx_late_collision];
 efx_update_diff_stat(&stats[SIENA_STAT_rx_good_bytes],
        stats[SIENA_STAT_rx_bytes] -
        stats[SIENA_STAT_rx_bad_bytes]);
 efx_update_sw_stats(efx, stats);
 return 0;
}

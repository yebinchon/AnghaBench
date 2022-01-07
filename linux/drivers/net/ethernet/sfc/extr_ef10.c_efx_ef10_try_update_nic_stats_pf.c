
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__* addr; } ;
struct efx_nic {int num_mac_stats; TYPE_1__ stats_buffer; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {scalar_t__* stats; } ;
typedef scalar_t__ __le64 ;


 int DECLARE_BITMAP (int ,int ) ;
 int EAGAIN ;
 int EF10_STAT_COUNT ;
 size_t EF10_STAT_port_rx_bad_bytes ;
 size_t EF10_STAT_port_rx_bytes ;
 size_t EF10_STAT_port_rx_bytes_minus_good_bytes ;
 size_t EF10_STAT_port_rx_good_bytes ;
 size_t EF10_STAT_port_rx_nodesc_drops ;
 scalar_t__ EFX_MC_STATS_GENERATION_INVALID ;
 size_t MC_CMD_MAC_GENERATION_START ;
 int efx_ef10_get_stat_mask (struct efx_nic*,int ) ;
 int efx_ef10_stat_desc ;
 int efx_nic_fix_nodesc_drop_stat (struct efx_nic*,scalar_t__*) ;
 int efx_nic_update_stats (int ,int ,int ,scalar_t__*,scalar_t__*,int) ;
 int efx_update_diff_stat (scalar_t__*,scalar_t__) ;
 int efx_update_sw_stats (struct efx_nic*,scalar_t__*) ;
 int mask ;
 int rmb () ;

__attribute__((used)) static int efx_ef10_try_update_nic_stats_pf(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 DECLARE_BITMAP(mask, EF10_STAT_COUNT);
 __le64 generation_start, generation_end;
 u64 *stats = nic_data->stats;
 __le64 *dma_stats;

 efx_ef10_get_stat_mask(efx, mask);

 dma_stats = efx->stats_buffer.addr;

 generation_end = dma_stats[efx->num_mac_stats - 1];
 if (generation_end == EFX_MC_STATS_GENERATION_INVALID)
  return 0;
 rmb();
 efx_nic_update_stats(efx_ef10_stat_desc, EF10_STAT_COUNT, mask,
        stats, efx->stats_buffer.addr, 0);
 rmb();
 generation_start = dma_stats[MC_CMD_MAC_GENERATION_START];
 if (generation_end != generation_start)
  return -EAGAIN;


 efx_nic_fix_nodesc_drop_stat(efx,
         &stats[EF10_STAT_port_rx_nodesc_drops]);
 stats[EF10_STAT_port_rx_good_bytes] =
  stats[EF10_STAT_port_rx_bytes] -
  stats[EF10_STAT_port_rx_bytes_minus_good_bytes];
 efx_update_diff_stat(&stats[EF10_STAT_port_rx_bad_bytes],
        stats[EF10_STAT_port_rx_bytes_minus_good_bytes]);
 efx_update_sw_stats(efx, stats);
 return 0;
}

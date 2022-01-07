
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct falcon_nic_data {int stats_pending; int stats; } ;
struct TYPE_2__ {int addr; } ;
struct ef4_nic {int net_dev; TYPE_1__ stats_buffer; struct falcon_nic_data* nic_data; } ;


 int FALCON_STAT_COUNT ;
 scalar_t__ FALCON_XMAC_STATS_DMA_FLAG (struct ef4_nic*) ;
 int ef4_nic_update_stats (int ,int ,int ,int ,int ,int) ;
 int falcon_stat_desc ;
 int falcon_stat_mask ;
 int hw ;
 int netif_err (struct ef4_nic*,int ,int ,char*) ;
 int rmb () ;

__attribute__((used)) static void falcon_stats_complete(struct ef4_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;

 if (!nic_data->stats_pending)
  return;

 nic_data->stats_pending = 0;
 if (FALCON_XMAC_STATS_DMA_FLAG(efx)) {
  rmb();
  ef4_nic_update_stats(falcon_stat_desc, FALCON_STAT_COUNT,
         falcon_stat_mask, nic_data->stats,
         efx->stats_buffer.addr, 1);
 } else {
  netif_err(efx, hw, efx->net_dev,
     "timed out waiting for statistics\n");
 }
}

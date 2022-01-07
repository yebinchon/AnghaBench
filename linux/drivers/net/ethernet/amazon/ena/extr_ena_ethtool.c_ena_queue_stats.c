
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ena_stats {scalar_t__ stat_offset; } ;
struct ena_ring {int syncp; int rx_stats; int tx_stats; } ;
struct ena_adapter {int num_queues; struct ena_ring* rx_ring; struct ena_ring* tx_ring; } ;


 int ENA_STATS_ARRAY_RX ;
 int ENA_STATS_ARRAY_TX ;
 int ena_safe_update_stat (int *,int ,int *) ;
 struct ena_stats* ena_stats_rx_strings ;
 struct ena_stats* ena_stats_tx_strings ;

__attribute__((used)) static void ena_queue_stats(struct ena_adapter *adapter, u64 **data)
{
 const struct ena_stats *ena_stats;
 struct ena_ring *ring;

 u64 *ptr;
 int i, j;

 for (i = 0; i < adapter->num_queues; i++) {

  ring = &adapter->tx_ring[i];

  for (j = 0; j < ENA_STATS_ARRAY_TX; j++) {
   ena_stats = &ena_stats_tx_strings[j];

   ptr = (u64 *)((uintptr_t)&ring->tx_stats +
    (uintptr_t)ena_stats->stat_offset);

   ena_safe_update_stat(ptr, (*data)++, &ring->syncp);
  }


  ring = &adapter->rx_ring[i];

  for (j = 0; j < ENA_STATS_ARRAY_RX; j++) {
   ena_stats = &ena_stats_rx_strings[j];

   ptr = (u64 *)((uintptr_t)&ring->rx_stats +
    (uintptr_t)ena_stats->stat_offset);

   ena_safe_update_stat(ptr, (*data)++, &ring->syncp);
  }
 }
}

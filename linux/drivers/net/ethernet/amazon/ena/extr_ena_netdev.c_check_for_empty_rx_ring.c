
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int empty_rx_ring; } ;
struct ena_ring {int ring_size; scalar_t__ empty_rx_queue; int napi; int syncp; TYPE_1__ rx_stats; int ena_com_io_sq; } ;
struct ena_adapter {int num_queues; int netdev; struct ena_ring* rx_ring; int flags; } ;


 scalar_t__ EMPTY_RX_REFILL ;
 int ENA_FLAG_DEV_UP ;
 int ENA_FLAG_TRIGGER_RESET ;
 int drv ;
 int ena_com_free_desc (int ) ;
 int napi_schedule (int ) ;
 int netif_err (struct ena_adapter*,int ,int ,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void check_for_empty_rx_ring(struct ena_adapter *adapter)
{
 struct ena_ring *rx_ring;
 int i, refill_required;

 if (!test_bit(ENA_FLAG_DEV_UP, &adapter->flags))
  return;

 if (test_bit(ENA_FLAG_TRIGGER_RESET, &adapter->flags))
  return;

 for (i = 0; i < adapter->num_queues; i++) {
  rx_ring = &adapter->rx_ring[i];

  refill_required =
   ena_com_free_desc(rx_ring->ena_com_io_sq);
  if (unlikely(refill_required == (rx_ring->ring_size - 1))) {
   rx_ring->empty_rx_queue++;

   if (rx_ring->empty_rx_queue >= EMPTY_RX_REFILL) {
    u64_stats_update_begin(&rx_ring->syncp);
    rx_ring->rx_stats.empty_rx_ring++;
    u64_stats_update_end(&rx_ring->syncp);

    netif_err(adapter, drv, adapter->netdev,
       "trigger refill for ring %d\n", i);

    napi_schedule(rx_ring->napi);
    rx_ring->empty_rx_queue = 0;
   }
  } else {
   rx_ring->empty_rx_queue = 0;
  }
 }
}

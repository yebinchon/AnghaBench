
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_ring {int dummy; } ;
struct ena_adapter {int num_queues; struct ena_ring* tx_ring; } ;


 int ena_free_tx_bufs (struct ena_ring*) ;

__attribute__((used)) static void ena_free_all_tx_bufs(struct ena_adapter *adapter)
{
 struct ena_ring *tx_ring;
 int i;

 for (i = 0; i < adapter->num_queues; i++) {
  tx_ring = &adapter->tx_ring[i];
  ena_free_tx_bufs(tx_ring);
 }
}

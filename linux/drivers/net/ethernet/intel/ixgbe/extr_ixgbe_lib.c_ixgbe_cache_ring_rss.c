
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ixgbe_adapter {int num_rx_queues; int num_tx_queues; int num_xdp_queues; TYPE_3__** xdp_ring; TYPE_2__** tx_ring; int netdev; TYPE_1__** rx_ring; } ;
struct TYPE_6__ {int reg_idx; } ;
struct TYPE_5__ {int reg_idx; } ;
struct TYPE_4__ {int reg_idx; int netdev; } ;



__attribute__((used)) static bool ixgbe_cache_ring_rss(struct ixgbe_adapter *adapter)
{
 int i, reg_idx;

 for (i = 0; i < adapter->num_rx_queues; i++) {
  adapter->rx_ring[i]->reg_idx = i;
  adapter->rx_ring[i]->netdev = adapter->netdev;
 }
 for (i = 0, reg_idx = 0; i < adapter->num_tx_queues; i++, reg_idx++)
  adapter->tx_ring[i]->reg_idx = reg_idx;
 for (i = 0; i < adapter->num_xdp_queues; i++, reg_idx++)
  adapter->xdp_ring[i]->reg_idx = reg_idx;

 return 1;
}

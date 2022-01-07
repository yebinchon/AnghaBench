
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int num_tx_queues; int num_xdp_queues; int * xdp_ring; int * tx_ring; } ;


 int ixgbe_clean_tx_ring (int ) ;

__attribute__((used)) static void ixgbe_clean_all_tx_rings(struct ixgbe_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++)
  ixgbe_clean_tx_ring(adapter->tx_ring[i]);
 for (i = 0; i < adapter->num_xdp_queues; i++)
  ixgbe_clean_tx_ring(adapter->xdp_ring[i]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int num_rx_queues; int * rx_ring; } ;


 int ixgbevf_clean_rx_ring (int ) ;

__attribute__((used)) static void ixgbevf_clean_all_rx_rings(struct ixgbevf_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_rx_queues; i++)
  ixgbevf_clean_rx_ring(adapter->rx_ring[i]);
}

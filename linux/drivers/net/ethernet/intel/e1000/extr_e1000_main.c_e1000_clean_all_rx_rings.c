
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_adapter {int num_rx_queues; int * rx_ring; } ;


 int e1000_clean_rx_ring (struct e1000_adapter*,int *) ;

__attribute__((used)) static void e1000_clean_all_rx_rings(struct e1000_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_rx_queues; i++)
  e1000_clean_rx_ring(adapter, &adapter->rx_ring[i]);
}

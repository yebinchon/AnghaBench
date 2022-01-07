
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_adapter {int num_rx_queues; int * rx_ring; } ;


 int igc_free_rx_resources (int ) ;

__attribute__((used)) static void igc_free_all_rx_resources(struct igc_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_rx_queues; i++)
  igc_free_rx_resources(adapter->rx_ring[i]);
}

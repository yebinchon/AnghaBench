
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_adapter {int num_rx_queues; scalar_t__* rx_ring; } ;


 int igc_clean_rx_ring (scalar_t__) ;

__attribute__((used)) static void igc_clean_all_rx_rings(struct igc_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_rx_queues; i++)
  if (adapter->rx_ring[i])
   igc_clean_rx_ring(adapter->rx_ring[i]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_adapter {int num_tx_queues; int * tx_ring; } ;


 int igc_free_tx_resources (int ) ;

__attribute__((used)) static void igc_free_all_tx_resources(struct igc_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++)
  igc_free_tx_resources(adapter->tx_ring[i]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_adapter {int num_tx_queues; int * tx_ring; } ;


 int igc_configure_tx_ring (struct igc_adapter*,int ) ;

__attribute__((used)) static void igc_configure_tx(struct igc_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++)
  igc_configure_tx_ring(adapter, adapter->tx_ring[i]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_adapter {int num_tx_queues; int * tx_ring; } ;


 int e1000_clean_tx_ring (struct e1000_adapter*,int *) ;

__attribute__((used)) static void e1000_clean_all_tx_rings(struct e1000_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++)
  e1000_clean_tx_ring(adapter, &adapter->tx_ring[i]);
}

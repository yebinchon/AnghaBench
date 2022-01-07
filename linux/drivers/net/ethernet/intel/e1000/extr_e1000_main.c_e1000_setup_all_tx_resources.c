
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_adapter {int num_tx_queues; int * tx_ring; } ;


 int e1000_free_tx_resources (struct e1000_adapter*,int *) ;
 int e1000_setup_tx_resources (struct e1000_adapter*,int *) ;
 int e_err (int ,char*,int) ;
 int probe ;

int e1000_setup_all_tx_resources(struct e1000_adapter *adapter)
{
 int i, err = 0;

 for (i = 0; i < adapter->num_tx_queues; i++) {
  err = e1000_setup_tx_resources(adapter, &adapter->tx_ring[i]);
  if (err) {
   e_err(probe, "Allocation for Tx Queue %u failed\n", i);
   for (i-- ; i >= 0; i--)
    e1000_free_tx_resources(adapter,
       &adapter->tx_ring[i]);
   break;
  }
 }

 return err;
}

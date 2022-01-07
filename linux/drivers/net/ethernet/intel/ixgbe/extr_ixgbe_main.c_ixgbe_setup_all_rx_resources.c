
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int num_rx_queues; int * rx_ring; } ;


 int e_err (int ,char*,int) ;
 int ixgbe_free_rx_resources (int ) ;
 int ixgbe_setup_fcoe_ddp_resources (struct ixgbe_adapter*) ;
 int ixgbe_setup_rx_resources (struct ixgbe_adapter*,int ) ;
 int probe ;

__attribute__((used)) static int ixgbe_setup_all_rx_resources(struct ixgbe_adapter *adapter)
{
 int i, err = 0;

 for (i = 0; i < adapter->num_rx_queues; i++) {
  err = ixgbe_setup_rx_resources(adapter, adapter->rx_ring[i]);
  if (!err)
   continue;

  e_err(probe, "Allocation for Rx Queue %u failed\n", i);
  goto err_setup_rx;
 }





  return 0;
err_setup_rx:

 while (i--)
  ixgbe_free_rx_resources(adapter->rx_ring[i]);
 return err;
}

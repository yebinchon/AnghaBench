
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int num_tx_queues; int num_xdp_queues; int * tx_ring; int * xdp_ring; } ;


 int e_err (int ,char*,int) ;
 int ixgbe_free_tx_resources (int ) ;
 int ixgbe_setup_tx_resources (int ) ;
 int probe ;

__attribute__((used)) static int ixgbe_setup_all_tx_resources(struct ixgbe_adapter *adapter)
{
 int i, j = 0, err = 0;

 for (i = 0; i < adapter->num_tx_queues; i++) {
  err = ixgbe_setup_tx_resources(adapter->tx_ring[i]);
  if (!err)
   continue;

  e_err(probe, "Allocation for Tx Queue %u failed\n", i);
  goto err_setup_tx;
 }
 for (j = 0; j < adapter->num_xdp_queues; j++) {
  err = ixgbe_setup_tx_resources(adapter->xdp_ring[j]);
  if (!err)
   continue;

  e_err(probe, "Allocation for Tx Queue %u failed\n", j);
  goto err_setup_tx;
 }

 return 0;
err_setup_tx:

 while (j--)
  ixgbe_free_tx_resources(adapter->xdp_ring[j]);
 while (i--)
  ixgbe_free_tx_resources(adapter->tx_ring[i]);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int num_tx_queues; int num_xdp_queues; int * tx_ring; int * xdp_ring; int hw; } ;


 int hw_dbg (int *,char*,int) ;
 int ixgbevf_free_tx_resources (int ) ;
 int ixgbevf_setup_tx_resources (int ) ;

__attribute__((used)) static int ixgbevf_setup_all_tx_resources(struct ixgbevf_adapter *adapter)
{
 int i, j = 0, err = 0;

 for (i = 0; i < adapter->num_tx_queues; i++) {
  err = ixgbevf_setup_tx_resources(adapter->tx_ring[i]);
  if (!err)
   continue;
  hw_dbg(&adapter->hw, "Allocation for Tx Queue %u failed\n", i);
  goto err_setup_tx;
 }

 for (j = 0; j < adapter->num_xdp_queues; j++) {
  err = ixgbevf_setup_tx_resources(adapter->xdp_ring[j]);
  if (!err)
   continue;
  hw_dbg(&adapter->hw, "Allocation for XDP Queue %u failed\n", j);
  goto err_setup_tx;
 }

 return 0;
err_setup_tx:

 while (j--)
  ixgbevf_free_tx_resources(adapter->xdp_ring[j]);
 while (i--)
  ixgbevf_free_tx_resources(adapter->tx_ring[i]);

 return err;
}

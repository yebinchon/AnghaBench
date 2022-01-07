
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int num_rx_queues; int * rx_ring; int hw; } ;


 int hw_dbg (int *,char*,int) ;
 int ixgbevf_free_rx_resources (int ) ;
 int ixgbevf_setup_rx_resources (struct ixgbevf_adapter*,int ) ;

__attribute__((used)) static int ixgbevf_setup_all_rx_resources(struct ixgbevf_adapter *adapter)
{
 int i, err = 0;

 for (i = 0; i < adapter->num_rx_queues; i++) {
  err = ixgbevf_setup_rx_resources(adapter, adapter->rx_ring[i]);
  if (!err)
   continue;
  hw_dbg(&adapter->hw, "Allocation for Rx Queue %u failed\n", i);
  goto err_setup_rx;
 }

 return 0;
err_setup_rx:

 while (i--)
  ixgbevf_free_rx_resources(adapter->rx_ring[i]);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbe_hw {scalar_t__ adapter_stopped; } ;
struct ixgbevf_adapter {int num_rx_queues; int num_tx_queues; int state; int num_msix_vectors; struct ixgbe_hw hw; } ;


 int EBUSY ;
 int ENOMEM ;
 int IXGBE_ERR_MBX ;
 int __IXGBEVF_TESTING ;
 int ixgbevf_configure (struct ixgbevf_adapter*) ;
 int ixgbevf_free_all_rx_resources (struct ixgbevf_adapter*) ;
 int ixgbevf_free_all_tx_resources (struct ixgbevf_adapter*) ;
 int ixgbevf_free_irq (struct ixgbevf_adapter*) ;
 int ixgbevf_request_irq (struct ixgbevf_adapter*) ;
 int ixgbevf_reset (struct ixgbevf_adapter*) ;
 int ixgbevf_setup_all_rx_resources (struct ixgbevf_adapter*) ;
 int ixgbevf_setup_all_tx_resources (struct ixgbevf_adapter*) ;
 int ixgbevf_up_complete (struct ixgbevf_adapter*) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_set_real_num_rx_queues (struct net_device*,int ) ;
 int netif_set_real_num_tx_queues (struct net_device*,int ) ;
 int pr_err (char*) ;
 scalar_t__ test_bit (int ,int *) ;

int ixgbevf_open(struct net_device *netdev)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 int err;







 if (!adapter->num_msix_vectors)
  return -ENOMEM;

 if (hw->adapter_stopped) {
  ixgbevf_reset(adapter);



  if (hw->adapter_stopped) {
   err = IXGBE_ERR_MBX;
   pr_err("Unable to start - perhaps the PF Driver isn't up yet\n");
   goto err_setup_reset;
  }
 }


 if (test_bit(__IXGBEVF_TESTING, &adapter->state))
  return -EBUSY;

 netif_carrier_off(netdev);


 err = ixgbevf_setup_all_tx_resources(adapter);
 if (err)
  goto err_setup_tx;


 err = ixgbevf_setup_all_rx_resources(adapter);
 if (err)
  goto err_setup_rx;

 ixgbevf_configure(adapter);

 err = ixgbevf_request_irq(adapter);
 if (err)
  goto err_req_irq;


 err = netif_set_real_num_tx_queues(netdev, adapter->num_tx_queues);
 if (err)
  goto err_set_queues;

 err = netif_set_real_num_rx_queues(netdev, adapter->num_rx_queues);
 if (err)
  goto err_set_queues;

 ixgbevf_up_complete(adapter);

 return 0;

err_set_queues:
 ixgbevf_free_irq(adapter);
err_req_irq:
 ixgbevf_free_all_rx_resources(adapter);
err_setup_rx:
 ixgbevf_free_all_tx_resources(adapter);
err_setup_tx:
 ixgbevf_reset(adapter);
err_setup_reset:

 return err;
}

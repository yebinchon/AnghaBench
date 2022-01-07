
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int (* set_phy_power ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
struct ixgbe_adapter {int num_tx_queues; int num_rx_queues; struct ixgbe_hw hw; int wol; int state; } ;


 int EBUSY ;
 int IXGBE_VXLANCTRL_ALL_UDPPORT_MASK ;
 int __IXGBE_TESTING ;
 int ixgbe_clear_udp_tunnel_port (struct ixgbe_adapter*,int ) ;
 int ixgbe_configure (struct ixgbe_adapter*) ;
 int ixgbe_free_all_rx_resources (struct ixgbe_adapter*) ;
 int ixgbe_free_all_tx_resources (struct ixgbe_adapter*) ;
 int ixgbe_free_irq (struct ixgbe_adapter*) ;
 int ixgbe_ptp_init (struct ixgbe_adapter*) ;
 int ixgbe_request_irq (struct ixgbe_adapter*) ;
 int ixgbe_reset (struct ixgbe_adapter*) ;
 int ixgbe_setup_all_rx_resources (struct ixgbe_adapter*) ;
 int ixgbe_setup_all_tx_resources (struct ixgbe_adapter*) ;
 int ixgbe_up_complete (struct ixgbe_adapter*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_set_real_num_rx_queues (struct net_device*,int) ;
 int netif_set_real_num_tx_queues (struct net_device*,int) ;
 int stub1 (struct ixgbe_hw*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int udp_tunnel_get_rx_info (struct net_device*) ;

int ixgbe_open(struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 int err, queues;


 if (test_bit(__IXGBE_TESTING, &adapter->state))
  return -EBUSY;

 netif_carrier_off(netdev);


 err = ixgbe_setup_all_tx_resources(adapter);
 if (err)
  goto err_setup_tx;


 err = ixgbe_setup_all_rx_resources(adapter);
 if (err)
  goto err_setup_rx;

 ixgbe_configure(adapter);

 err = ixgbe_request_irq(adapter);
 if (err)
  goto err_req_irq;


 queues = adapter->num_tx_queues;
 err = netif_set_real_num_tx_queues(netdev, queues);
 if (err)
  goto err_set_queues;

 queues = adapter->num_rx_queues;
 err = netif_set_real_num_rx_queues(netdev, queues);
 if (err)
  goto err_set_queues;

 ixgbe_ptp_init(adapter);

 ixgbe_up_complete(adapter);

 ixgbe_clear_udp_tunnel_port(adapter, IXGBE_VXLANCTRL_ALL_UDPPORT_MASK);
 udp_tunnel_get_rx_info(netdev);

 return 0;

err_set_queues:
 ixgbe_free_irq(adapter);
err_req_irq:
 ixgbe_free_all_rx_resources(adapter);
 if (hw->phy.ops.set_phy_power && !adapter->wol)
  hw->phy.ops.set_phy_power(&adapter->hw, 0);
err_setup_rx:
 ixgbe_free_all_tx_resources(adapter);
err_setup_tx:
 ixgbe_reset(adapter);

 return err;
}

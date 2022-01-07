
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgb_adapter {int dummy; } ;


 int ixgb_free_rx_resources (struct ixgb_adapter*) ;
 int ixgb_free_tx_resources (struct ixgb_adapter*) ;
 int ixgb_reset (struct ixgb_adapter*) ;
 int ixgb_setup_rx_resources (struct ixgb_adapter*) ;
 int ixgb_setup_tx_resources (struct ixgb_adapter*) ;
 int ixgb_up (struct ixgb_adapter*) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static int
ixgb_open(struct net_device *netdev)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);
 int err;


 err = ixgb_setup_tx_resources(adapter);
 if (err)
  goto err_setup_tx;

 netif_carrier_off(netdev);



 err = ixgb_setup_rx_resources(adapter);
 if (err)
  goto err_setup_rx;

 err = ixgb_up(adapter);
 if (err)
  goto err_up;

 netif_start_queue(netdev);

 return 0;

err_up:
 ixgb_free_rx_resources(adapter);
err_setup_rx:
 ixgb_free_tx_resources(adapter);
err_setup_tx:
 ixgb_reset(adapter);

 return err;
}

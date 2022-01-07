
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgb_adapter {int dummy; } ;


 int ixgb_down (struct ixgb_adapter*,int) ;
 int ixgb_free_rx_resources (struct ixgb_adapter*) ;
 int ixgb_free_tx_resources (struct ixgb_adapter*) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
ixgb_close(struct net_device *netdev)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);

 ixgb_down(adapter, 1);

 ixgb_free_tx_resources(adapter);
 ixgb_free_rx_resources(adapter);

 return 0;
}

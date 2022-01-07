
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbevf_adapter {int dummy; } ;


 int ixgbevf_close_suspend (struct ixgbevf_adapter*) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_device_present (struct net_device*) ;

int ixgbevf_close(struct net_device *netdev)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);

 if (netif_device_present(netdev))
  ixgbevf_close_suspend(adapter);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbe_adapter {int dummy; } ;


 int ixgbe_close_suspend (struct ixgbe_adapter*) ;
 int ixgbe_fdir_filter_exit (struct ixgbe_adapter*) ;
 int ixgbe_ptp_stop (struct ixgbe_adapter*) ;
 int ixgbe_release_hw_control (struct ixgbe_adapter*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_device_present (struct net_device*) ;

int ixgbe_close(struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 ixgbe_ptp_stop(adapter);

 if (netif_device_present(netdev))
  ixgbe_close_suspend(adapter);

 ixgbe_fdir_filter_exit(adapter);

 ixgbe_release_hw_control(adapter);

 return 0;
}

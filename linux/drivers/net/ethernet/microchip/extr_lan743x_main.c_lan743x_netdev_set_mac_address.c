
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct lan743x_adapter {int dummy; } ;


 int eth_prepare_mac_addr_change (struct net_device*,struct sockaddr*) ;
 int ether_addr_copy (int ,int ) ;
 int lan743x_mac_set_address (struct lan743x_adapter*,int ) ;
 int lan743x_rfe_update_mac_address (struct lan743x_adapter*) ;
 struct lan743x_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int lan743x_netdev_set_mac_address(struct net_device *netdev,
       void *addr)
{
 struct lan743x_adapter *adapter = netdev_priv(netdev);
 struct sockaddr *sock_addr = addr;
 int ret;

 ret = eth_prepare_mac_addr_change(netdev, sock_addr);
 if (ret)
  return ret;
 ether_addr_copy(netdev->dev_addr, sock_addr->sa_data);
 lan743x_mac_set_address(adapter, sock_addr->sa_data);
 lan743x_rfe_update_mac_address(adapter);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct TYPE_2__ {int addr; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;
 int ixgbe_mac_set_default_filter (struct ixgbe_adapter*) ;
 int memcpy (int ,int ,int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_set_mac(struct net_device *netdev, void *p)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 memcpy(hw->mac.addr, addr->sa_data, netdev->addr_len);

 ixgbe_mac_set_default_filter(adapter);

 return 0;
}

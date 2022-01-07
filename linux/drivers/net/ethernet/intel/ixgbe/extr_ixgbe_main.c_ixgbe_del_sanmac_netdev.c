
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ixgbe_mac_info {int san_addr; } ;
struct TYPE_2__ {struct ixgbe_mac_info mac; } ;
struct ixgbe_adapter {TYPE_1__ hw; } ;


 int NETDEV_HW_ADDR_T_SAN ;
 int dev_addr_del (struct net_device*,int ,int ) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int ixgbe_del_sanmac_netdev(struct net_device *dev)
{
 int err = 0;
 struct ixgbe_adapter *adapter = netdev_priv(dev);
 struct ixgbe_mac_info *mac = &adapter->hw.mac;

 if (is_valid_ether_addr(mac->san_addr)) {
  rtnl_lock();
  err = dev_addr_del(dev, mac->san_addr, NETDEV_HW_ADDR_T_SAN);
  rtnl_unlock();
 }
 return err;
}

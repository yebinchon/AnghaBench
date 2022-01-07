
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int (* set_vmdq_san_mac ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_3__ {TYPE_2__ ops; int san_addr; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int NETDEV_HW_ADDR_T_SAN ;
 int VMDQ_P (int ) ;
 int dev_addr_add (struct net_device*,int ,int ) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (struct ixgbe_hw*,int ) ;

__attribute__((used)) static int ixgbe_add_sanmac_netdev(struct net_device *dev)
{
 int err = 0;
 struct ixgbe_adapter *adapter = netdev_priv(dev);
 struct ixgbe_hw *hw = &adapter->hw;

 if (is_valid_ether_addr(hw->mac.san_addr)) {
  rtnl_lock();
  err = dev_addr_add(dev, hw->mac.san_addr, NETDEV_HW_ADDR_T_SAN);
  rtnl_unlock();


  hw->mac.ops.set_vmdq_san_mac(hw, VMDQ_P(0));
 }
 return err;
}

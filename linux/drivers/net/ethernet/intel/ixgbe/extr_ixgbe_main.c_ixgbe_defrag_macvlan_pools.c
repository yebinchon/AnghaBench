
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbe_adapter {int fwd_bitmask; } ;


 int bitmap_clear (int ,int,int) ;
 int ixgbe_reassign_macvlan_pool ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int netdev_walk_all_upper_dev_rcu (struct net_device*,int ,struct ixgbe_adapter*) ;

__attribute__((used)) static void ixgbe_defrag_macvlan_pools(struct net_device *dev)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);


 bitmap_clear(adapter->fwd_bitmask, 1, 63);


 netdev_walk_all_upper_dev_rcu(dev, ixgbe_reassign_macvlan_pool,
          adapter);
}

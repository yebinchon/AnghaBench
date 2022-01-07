
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int netdev; } ;


 int ixgbe_macvlan_up ;
 int netdev_walk_all_upper_dev_rcu (int ,int ,struct ixgbe_adapter*) ;

__attribute__((used)) static void ixgbe_configure_dfwd(struct ixgbe_adapter *adapter)
{
 netdev_walk_all_upper_dev_rcu(adapter->netdev,
          ixgbe_macvlan_up, adapter);
}

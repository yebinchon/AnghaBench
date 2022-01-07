
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* netdev_ops; } ;
struct ixgbe_adapter {int state; } ;
struct TYPE_2__ {int (* ndo_open ) (struct net_device*) ;int (* ndo_stop ) (struct net_device*) ;} ;


 int __IXGBE_RESETTING ;
 int clear_bit (int ,int *) ;
 int ixgbe_clear_interrupt_scheme (struct ixgbe_adapter*) ;
 int ixgbe_init_interrupt_scheme (struct ixgbe_adapter*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ixgbe_dcbnl_devreset(struct net_device *dev)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);

 while (test_and_set_bit(__IXGBE_RESETTING, &adapter->state))
  usleep_range(1000, 2000);

 if (netif_running(dev))
  dev->netdev_ops->ndo_stop(dev);

 ixgbe_clear_interrupt_scheme(adapter);
 ixgbe_init_interrupt_scheme(adapter);

 if (netif_running(dev))
  dev->netdev_ops->ndo_open(dev);

 clear_bit(__IXGBE_RESETTING, &adapter->state);
}

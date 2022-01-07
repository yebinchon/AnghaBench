
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_ops {int dummy; } ;


 struct net_device_ops const xgbe_netdev_ops ;

const struct net_device_ops *xgbe_get_netdev_ops(void)
{
 return &xgbe_netdev_ops;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; } ;


 int mlxsw_sp_port_netdev_ops ;

bool mlxsw_sp_port_dev_check(const struct net_device *dev)
{
 return dev->netdev_ops == &mlxsw_sp_port_netdev_ops;
}

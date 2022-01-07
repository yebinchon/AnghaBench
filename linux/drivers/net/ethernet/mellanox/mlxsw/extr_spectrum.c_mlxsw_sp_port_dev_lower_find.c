
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_port {int dummy; } ;


 int mlxsw_sp_lower_dev_walk ;
 scalar_t__ mlxsw_sp_port_dev_check (struct net_device*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;
 int netdev_walk_all_lower_dev (struct net_device*,int ,struct mlxsw_sp_port**) ;

struct mlxsw_sp_port *mlxsw_sp_port_dev_lower_find(struct net_device *dev)
{
 struct mlxsw_sp_port *mlxsw_sp_port;

 if (mlxsw_sp_port_dev_check(dev))
  return netdev_priv(dev);

 mlxsw_sp_port = ((void*)0);
 netdev_walk_all_lower_dev(dev, mlxsw_sp_lower_dev_walk, &mlxsw_sp_port);

 return mlxsw_sp_port;
}

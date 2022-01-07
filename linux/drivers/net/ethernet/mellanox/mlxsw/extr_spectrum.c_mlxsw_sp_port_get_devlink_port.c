
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
struct devlink_port {int dummy; } ;


 struct devlink_port* mlxsw_core_port_devlink_port_get (int ,int ) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct devlink_port *
mlxsw_sp_port_get_devlink_port(struct net_device *dev)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;

 return mlxsw_core_port_devlink_port_get(mlxsw_sp->core,
      mlxsw_sp_port->local_port);
}

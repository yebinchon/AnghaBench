
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_m_port {int local_port; struct mlxsw_m* mlxsw_m; } ;
struct mlxsw_m {int core; } ;
struct devlink_port {int dummy; } ;


 struct devlink_port* mlxsw_core_port_devlink_port_get (int ,int ) ;
 struct mlxsw_m_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct devlink_port *
mlxsw_m_port_get_devlink_port(struct net_device *dev)
{
 struct mlxsw_m_port *mlxsw_m_port = netdev_priv(dev);
 struct mlxsw_m *mlxsw_m = mlxsw_m_port->mlxsw_m;

 return mlxsw_core_port_devlink_port_get(mlxsw_m->core,
      mlxsw_m_port->local_port);
}

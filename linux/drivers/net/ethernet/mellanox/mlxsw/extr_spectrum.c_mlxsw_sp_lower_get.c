
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;


 struct mlxsw_sp_port* mlxsw_sp_port_dev_lower_find (struct net_device*) ;

struct mlxsw_sp *mlxsw_sp_lower_get(struct net_device *dev)
{
 struct mlxsw_sp_port *mlxsw_sp_port;

 mlxsw_sp_port = mlxsw_sp_port_dev_lower_find(dev);
 return mlxsw_sp_port ? mlxsw_sp_port->mlxsw_sp : ((void*)0);
}

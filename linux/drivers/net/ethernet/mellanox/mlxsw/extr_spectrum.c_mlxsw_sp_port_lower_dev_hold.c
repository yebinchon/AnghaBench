
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_port {int dev; } ;


 int dev_hold (int ) ;
 struct mlxsw_sp_port* mlxsw_sp_port_dev_lower_find_rcu (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct mlxsw_sp_port *mlxsw_sp_port_lower_dev_hold(struct net_device *dev)
{
 struct mlxsw_sp_port *mlxsw_sp_port;

 rcu_read_lock();
 mlxsw_sp_port = mlxsw_sp_port_dev_lower_find_rcu(dev);
 if (mlxsw_sp_port)
  dev_hold(mlxsw_sp_port->dev);
 rcu_read_unlock();
 return mlxsw_sp_port;
}

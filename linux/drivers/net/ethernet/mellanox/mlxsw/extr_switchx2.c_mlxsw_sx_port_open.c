
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sx_port {int dummy; } ;


 int mlxsw_sx_port_admin_status_set (struct mlxsw_sx_port*,int) ;
 struct mlxsw_sx_port* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static int mlxsw_sx_port_open(struct net_device *dev)
{
 struct mlxsw_sx_port *mlxsw_sx_port = netdev_priv(dev);
 int err;

 err = mlxsw_sx_port_admin_status_set(mlxsw_sx_port, 1);
 if (err)
  return err;
 netif_start_queue(dev);
 return 0;
}

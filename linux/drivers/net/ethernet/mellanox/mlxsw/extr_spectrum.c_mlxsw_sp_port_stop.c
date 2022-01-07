
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_port {int dummy; } ;


 int mlxsw_sp_port_admin_status_set (struct mlxsw_sp_port*,int) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_port_stop(struct net_device *dev)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);

 netif_stop_queue(dev);
 return mlxsw_sp_port_admin_status_set(mlxsw_sp_port, 0);
}

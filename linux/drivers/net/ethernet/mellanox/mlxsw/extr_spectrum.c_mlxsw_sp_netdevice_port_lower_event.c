
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_notifier_changelowerstate_info {int lower_state_info; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {int lagged; } ;



 int mlxsw_sp_port_lag_changed (struct mlxsw_sp_port*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;
 int netif_is_lag_port (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_netdevice_port_lower_event(struct net_device *dev,
            unsigned long event, void *ptr)
{
 struct netdev_notifier_changelowerstate_info *info;
 struct mlxsw_sp_port *mlxsw_sp_port;
 int err;

 mlxsw_sp_port = netdev_priv(dev);
 info = ptr;

 switch (event) {
 case 128:
  if (netif_is_lag_port(dev) && mlxsw_sp_port->lagged) {
   err = mlxsw_sp_port_lag_changed(mlxsw_sp_port,
       info->lower_state_info);
   if (err)
    netdev_err(dev, "Failed to reflect link aggregation lower state change\n");
  }
  break;
 }

 return 0;
}

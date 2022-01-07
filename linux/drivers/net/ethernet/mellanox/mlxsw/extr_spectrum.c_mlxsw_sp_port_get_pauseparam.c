
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int tx_pause; int rx_pause; } ;
struct mlxsw_sp_port {TYPE_1__ link; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; } ;


 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlxsw_sp_port_get_pauseparam(struct net_device *dev,
      struct ethtool_pauseparam *pause)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);

 pause->rx_pause = mlxsw_sp_port->link.rx_pause;
 pause->tx_pause = mlxsw_sp_port->link.tx_pause;
}

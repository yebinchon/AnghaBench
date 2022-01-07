
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {TYPE_1__* ptp_ops; } ;
struct ethtool_ts_info {int dummy; } ;
struct TYPE_2__ {int (* get_ts_info ) (struct mlxsw_sp*,struct ethtool_ts_info*) ;} ;


 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;
 int stub1 (struct mlxsw_sp*,struct ethtool_ts_info*) ;

__attribute__((used)) static int
mlxsw_sp_get_ts_info(struct net_device *netdev, struct ethtool_ts_info *info)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(netdev);
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;

 return mlxsw_sp->ptp_ops->get_ts_info(mlxsw_sp, info);
}

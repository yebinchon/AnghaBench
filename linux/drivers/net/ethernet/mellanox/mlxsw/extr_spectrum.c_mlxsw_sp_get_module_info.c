
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int module; } ;
struct mlxsw_sp_port {TYPE_1__ mapping; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
struct ethtool_modinfo {int dummy; } ;


 int mlxsw_env_get_module_info (int ,int ,struct ethtool_modinfo*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_get_module_info(struct net_device *netdev,
        struct ethtool_modinfo *modinfo)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(netdev);
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 int err;

 err = mlxsw_env_get_module_info(mlxsw_sp->core,
     mlxsw_sp_port->mapping.module,
     modinfo);

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int module; } ;
struct mlxsw_sp_port {TYPE_1__ mapping; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
struct ethtool_eeprom {int dummy; } ;


 int mlxsw_env_get_module_eeprom (struct net_device*,int ,int ,struct ethtool_eeprom*,int *) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_get_module_eeprom(struct net_device *netdev,
          struct ethtool_eeprom *ee,
          u8 *data)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(netdev);
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 int err;

 err = mlxsw_env_get_module_eeprom(netdev, mlxsw_sp->core,
       mlxsw_sp_port->mapping.module, ee,
       data);

 return err;
}

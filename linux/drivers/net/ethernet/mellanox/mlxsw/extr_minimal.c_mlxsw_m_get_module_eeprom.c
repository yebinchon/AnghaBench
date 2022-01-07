
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct mlxsw_m_port {int module; TYPE_1__* mlxsw_m; } ;
struct mlxsw_core {int dummy; } ;
struct ethtool_eeprom {int dummy; } ;
struct TYPE_2__ {struct mlxsw_core* core; } ;


 int mlxsw_env_get_module_eeprom (struct net_device*,struct mlxsw_core*,int ,struct ethtool_eeprom*,int *) ;
 struct mlxsw_m_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
mlxsw_m_get_module_eeprom(struct net_device *netdev, struct ethtool_eeprom *ee,
     u8 *data)
{
 struct mlxsw_m_port *mlxsw_m_port = netdev_priv(netdev);
 struct mlxsw_core *core = mlxsw_m_port->mlxsw_m->core;

 return mlxsw_env_get_module_eeprom(netdev, core, mlxsw_m_port->module,
        ee, data);
}

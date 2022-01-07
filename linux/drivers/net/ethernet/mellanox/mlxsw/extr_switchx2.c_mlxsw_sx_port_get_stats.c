
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct mlxsw_sx_port {int local_port; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {int core; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {int (* getter ) (char*) ;} ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PPCNT_IEEE_8023_CNT ;
 int MLXSW_REG_PPCNT_LEN ;
 int MLXSW_SX_PORT_HW_STATS_LEN ;
 int mlxsw_reg_ppcnt_pack (char*,int ,int ,int ) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 TYPE_1__* mlxsw_sx_port_hw_stats ;
 struct mlxsw_sx_port* netdev_priv (struct net_device*) ;
 int ppcnt ;
 int stub1 (char*) ;

__attribute__((used)) static void mlxsw_sx_port_get_stats(struct net_device *dev,
        struct ethtool_stats *stats, u64 *data)
{
 struct mlxsw_sx_port *mlxsw_sx_port = netdev_priv(dev);
 struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
 char ppcnt_pl[MLXSW_REG_PPCNT_LEN];
 int i;
 int err;

 mlxsw_reg_ppcnt_pack(ppcnt_pl, mlxsw_sx_port->local_port,
        MLXSW_REG_PPCNT_IEEE_8023_CNT, 0);
 err = mlxsw_reg_query(mlxsw_sx->core, MLXSW_REG(ppcnt), ppcnt_pl);
 for (i = 0; i < MLXSW_SX_PORT_HW_STATS_LEN; i++)
  data[i] = !err ? mlxsw_sx_port_hw_stats[i].getter(ppcnt_pl) : 0;
}

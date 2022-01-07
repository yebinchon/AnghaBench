
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int mlxsw_reg_ppcnt_pack (char*,int ,int,int) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;
 int ppcnt ;

__attribute__((used)) static int mlxsw_sp_port_get_stats_raw(struct net_device *dev, int grp,
           int prio, char *ppcnt_pl)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;

 mlxsw_reg_ppcnt_pack(ppcnt_pl, mlxsw_sp_port->local_port, grp, prio);
 return mlxsw_reg_query(mlxsw_sp->core, MLXSW_REG(ppcnt), ppcnt_pl);
}

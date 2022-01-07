
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;


 int EOPNOTSUPP ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_MLCR_LEN ;
 int mlcr ;
 int mlxsw_reg_mlcr_pack (char*,int ,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_port_set_phys_id(struct net_device *dev,
         enum ethtool_phys_id_state state)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char mlcr_pl[MLXSW_REG_MLCR_LEN];
 bool active;

 switch (state) {
 case 129:
  active = 1;
  break;
 case 128:
  active = 0;
  break;
 default:
  return -EOPNOTSUPP;
 }

 mlxsw_reg_mlcr_pack(mlcr_pl, mlxsw_sp_port->local_port, active);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(mlcr), mlcr_pl);
}

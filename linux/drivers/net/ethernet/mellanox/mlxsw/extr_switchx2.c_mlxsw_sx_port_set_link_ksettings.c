
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct mlxsw_sx_port {int local_port; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {int core; } ;
struct TYPE_4__ {int speed; scalar_t__ autoneg; } ;
struct TYPE_3__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int EINVAL ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTYS_LEN ;
 int ethtool_convert_link_mode_to_legacy_u32 (int*,int ) ;
 int mlxsw_reg_ptys_eth_pack (char*,int ,int,int) ;
 int mlxsw_reg_ptys_eth_unpack (char*,int*,int*,int *) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sx_port_admin_status_set (struct mlxsw_sx_port*,int) ;
 int mlxsw_sx_port_oper_status_get (struct mlxsw_sx_port*,int*) ;
 int mlxsw_sx_to_ptys_advert_link (int) ;
 int mlxsw_sx_to_ptys_speed (int) ;
 int netdev_err (struct net_device*,char*) ;
 struct mlxsw_sx_port* netdev_priv (struct net_device*) ;
 int ptys ;

__attribute__((used)) static int
mlxsw_sx_port_set_link_ksettings(struct net_device *dev,
     const struct ethtool_link_ksettings *cmd)
{
 struct mlxsw_sx_port *mlxsw_sx_port = netdev_priv(dev);
 struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
 char ptys_pl[MLXSW_REG_PTYS_LEN];
 u32 speed;
 u32 eth_proto_new;
 u32 eth_proto_cap;
 u32 eth_proto_admin;
 u32 advertising;
 bool is_up;
 int err;

 speed = cmd->base.speed;

 ethtool_convert_link_mode_to_legacy_u32(&advertising,
      cmd->link_modes.advertising);

 eth_proto_new = cmd->base.autoneg == AUTONEG_ENABLE ?
  mlxsw_sx_to_ptys_advert_link(advertising) :
  mlxsw_sx_to_ptys_speed(speed);

 mlxsw_reg_ptys_eth_pack(ptys_pl, mlxsw_sx_port->local_port, 0, 0);
 err = mlxsw_reg_query(mlxsw_sx->core, MLXSW_REG(ptys), ptys_pl);
 if (err) {
  netdev_err(dev, "Failed to get proto");
  return err;
 }
 mlxsw_reg_ptys_eth_unpack(ptys_pl, &eth_proto_cap, &eth_proto_admin,
      ((void*)0));

 eth_proto_new = eth_proto_new & eth_proto_cap;
 if (!eth_proto_new) {
  netdev_err(dev, "Not supported proto admin requested");
  return -EINVAL;
 }
 if (eth_proto_new == eth_proto_admin)
  return 0;

 mlxsw_reg_ptys_eth_pack(ptys_pl, mlxsw_sx_port->local_port,
    eth_proto_new, 1);
 err = mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(ptys), ptys_pl);
 if (err) {
  netdev_err(dev, "Failed to set proto admin");
  return err;
 }

 err = mlxsw_sx_port_oper_status_get(mlxsw_sx_port, &is_up);
 if (err) {
  netdev_err(dev, "Failed to get oper status");
  return err;
 }
 if (!is_up)
  return 0;

 err = mlxsw_sx_port_admin_status_set(mlxsw_sx_port, 0);
 if (err) {
  netdev_err(dev, "Failed to set admin status");
  return err;
 }

 err = mlxsw_sx_port_admin_status_set(mlxsw_sx_port, 1);
 if (err) {
  netdev_err(dev, "Failed to set admin status");
  return err;
 }

 return 0;
}

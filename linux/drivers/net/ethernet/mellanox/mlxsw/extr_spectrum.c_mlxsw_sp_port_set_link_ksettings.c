
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port_type_speed_ops {int (* to_ptys_advert_link ) (struct mlxsw_sp*,int ,struct ethtool_link_ksettings const*) ;int (* to_ptys_speed ) (struct mlxsw_sp*,int ,int ) ;int (* reg_ptys_eth_pack ) (struct mlxsw_sp*,char*,int ,int,int) ;int (* reg_ptys_eth_unpack ) (struct mlxsw_sp*,char*,int*,int *,int *) ;} ;
struct TYPE_6__ {int autoneg; } ;
struct TYPE_4__ {int width; } ;
struct mlxsw_sp_port {TYPE_3__ link; int local_port; TYPE_1__ mapping; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; struct mlxsw_sp_port_type_speed_ops* port_type_speed_ops; } ;
struct TYPE_5__ {int speed; int autoneg; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;


 int AUTONEG_ENABLE ;
 int EINVAL ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTYS_LEN ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_port_admin_status_set (struct mlxsw_sp_port*,int) ;
 int netdev_err (struct net_device*,char*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int ptys ;
 int stub1 (struct mlxsw_sp*,char*,int ,int,int) ;
 int stub2 (struct mlxsw_sp*,char*,int*,int *,int *) ;
 int stub3 (struct mlxsw_sp*,int ,struct ethtool_link_ksettings const*) ;
 int stub4 (struct mlxsw_sp*,int ,int ) ;
 int stub5 (struct mlxsw_sp*,char*,int ,int,int) ;

__attribute__((used)) static int
mlxsw_sp_port_set_link_ksettings(struct net_device *dev,
     const struct ethtool_link_ksettings *cmd)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 const struct mlxsw_sp_port_type_speed_ops *ops;
 char ptys_pl[MLXSW_REG_PTYS_LEN];
 u32 eth_proto_cap, eth_proto_new;
 bool autoneg;
 int err;

 ops = mlxsw_sp->port_type_speed_ops;

 ops->reg_ptys_eth_pack(mlxsw_sp, ptys_pl, mlxsw_sp_port->local_port,
          0, 0);
 err = mlxsw_reg_query(mlxsw_sp->core, MLXSW_REG(ptys), ptys_pl);
 if (err)
  return err;
 ops->reg_ptys_eth_unpack(mlxsw_sp, ptys_pl, &eth_proto_cap, ((void*)0), ((void*)0));

 autoneg = cmd->base.autoneg == AUTONEG_ENABLE;
 eth_proto_new = autoneg ?
  ops->to_ptys_advert_link(mlxsw_sp, mlxsw_sp_port->mapping.width,
      cmd) :
  ops->to_ptys_speed(mlxsw_sp, mlxsw_sp_port->mapping.width,
       cmd->base.speed);

 eth_proto_new = eth_proto_new & eth_proto_cap;
 if (!eth_proto_new) {
  netdev_err(dev, "No supported speed requested\n");
  return -EINVAL;
 }

 ops->reg_ptys_eth_pack(mlxsw_sp, ptys_pl, mlxsw_sp_port->local_port,
          eth_proto_new, autoneg);
 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ptys), ptys_pl);
 if (err)
  return err;

 mlxsw_sp_port->link.autoneg = autoneg;

 if (!netif_running(dev))
  return 0;

 mlxsw_sp_port_admin_status_set(mlxsw_sp_port, 0);
 mlxsw_sp_port_admin_status_set(mlxsw_sp_port, 1);

 return 0;
}

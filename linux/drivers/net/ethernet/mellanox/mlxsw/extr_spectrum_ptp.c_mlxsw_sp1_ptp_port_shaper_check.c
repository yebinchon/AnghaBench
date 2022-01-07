
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mlxsw_sp_port_type_speed_ops {scalar_t__ (* from_ptys_speed ) (struct mlxsw_sp*,scalar_t__) ;int (* reg_ptys_eth_unpack ) (struct mlxsw_sp*,char*,int *,int *,scalar_t__*) ;int (* reg_ptys_eth_pack ) (struct mlxsw_sp*,char*,int ,int ,int) ;} ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; struct mlxsw_sp_port_type_speed_ops* port_type_speed_ops; } ;
struct TYPE_2__ {scalar_t__ ethtool_speed; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTYS_LEN ;
 int MLXSW_SP1_PTP_SHAPER_PARAMS_LEN ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_sp1_ptp_hwtstamp_enabled (struct mlxsw_sp_port*) ;
 int mlxsw_sp1_ptp_port_shaper_set (struct mlxsw_sp_port*,int) ;
 TYPE_1__* mlxsw_sp1_ptp_shaper_params ;
 int ptys ;
 int stub1 (struct mlxsw_sp*,char*,int ,int ,int) ;
 int stub2 (struct mlxsw_sp*,char*,int *,int *,scalar_t__*) ;
 scalar_t__ stub3 (struct mlxsw_sp*,scalar_t__) ;

__attribute__((used)) static int mlxsw_sp1_ptp_port_shaper_check(struct mlxsw_sp_port *mlxsw_sp_port)
{
 const struct mlxsw_sp_port_type_speed_ops *port_type_speed_ops;
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char ptys_pl[MLXSW_REG_PTYS_LEN];
 u32 eth_proto_oper, speed;
 bool ptps = 0;
 int err, i;

 if (!mlxsw_sp1_ptp_hwtstamp_enabled(mlxsw_sp_port))
  return mlxsw_sp1_ptp_port_shaper_set(mlxsw_sp_port, 0);

 port_type_speed_ops = mlxsw_sp->port_type_speed_ops;
 port_type_speed_ops->reg_ptys_eth_pack(mlxsw_sp, ptys_pl,
            mlxsw_sp_port->local_port, 0,
            0);
 err = mlxsw_reg_query(mlxsw_sp->core, MLXSW_REG(ptys), ptys_pl);
 if (err)
  return err;
 port_type_speed_ops->reg_ptys_eth_unpack(mlxsw_sp, ptys_pl, ((void*)0), ((void*)0),
       &eth_proto_oper);

 speed = port_type_speed_ops->from_ptys_speed(mlxsw_sp, eth_proto_oper);
 for (i = 0; i < MLXSW_SP1_PTP_SHAPER_PARAMS_LEN; i++) {
  if (mlxsw_sp1_ptp_shaper_params[i].ethtool_speed == speed) {
   ptps = 1;
   break;
  }
 }

 return mlxsw_sp1_ptp_port_shaper_set(mlxsw_sp_port, ptps);
}

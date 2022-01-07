
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_qeec_hr { ____Placeholder_mlxsw_reg_qeec_hr } mlxsw_reg_qeec_hr ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_QEEC_LEN ;
 int mlxsw_reg_qeec_mase_set (char*,int) ;
 int mlxsw_reg_qeec_max_shaper_rate_set (char*,int ) ;
 int mlxsw_reg_qeec_pack (char*,int ,int,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int qeec ;

int mlxsw_sp_port_ets_maxrate_set(struct mlxsw_sp_port *mlxsw_sp_port,
      enum mlxsw_reg_qeec_hr hr, u8 index,
      u8 next_index, u32 maxrate)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char qeec_pl[MLXSW_REG_QEEC_LEN];

 mlxsw_reg_qeec_pack(qeec_pl, mlxsw_sp_port->local_port, hr, index,
       next_index);
 mlxsw_reg_qeec_mase_set(qeec_pl, 1);
 mlxsw_reg_qeec_max_shaper_rate_set(qeec_pl, maxrate);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(qeec), qeec_pl);
}

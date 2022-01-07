
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SLCOR_LEN ;
 int mlxsw_reg_slcor_col_enable_pack (char*,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int slcor ;

__attribute__((used)) static int mlxsw_sp_lag_col_port_enable(struct mlxsw_sp_port *mlxsw_sp_port,
     u16 lag_id)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char slcor_pl[MLXSW_REG_SLCOR_LEN];

 mlxsw_reg_slcor_col_enable_pack(slcor_pl, mlxsw_sp_port->local_port,
     lag_id);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(slcor), slcor_pl);
}

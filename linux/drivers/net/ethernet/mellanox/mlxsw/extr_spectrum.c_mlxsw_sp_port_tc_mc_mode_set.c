
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_QTCTM_LEN ;
 int mlxsw_reg_qtctm_pack (char*,int ,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int qtctm ;

__attribute__((used)) static int mlxsw_sp_port_tc_mc_mode_set(struct mlxsw_sp_port *mlxsw_sp_port,
     bool enable)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char qtctm_pl[MLXSW_REG_QTCTM_LEN];

 mlxsw_reg_qtctm_pack(qtctm_pl, mlxsw_sp_port->local_port, enable);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(qtctm), qtctm_pl);
}

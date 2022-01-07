
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_qpts_trust_state { ____Placeholder_mlxsw_reg_qpts_trust_state } mlxsw_reg_qpts_trust_state ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_QPTS_LEN ;
 int mlxsw_reg_qpts_pack (char*,int ,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int qpts ;

__attribute__((used)) static int
mlxsw_sp_port_dcb_app_update_qpts(struct mlxsw_sp_port *mlxsw_sp_port,
      enum mlxsw_reg_qpts_trust_state ts)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char qpts_pl[MLXSW_REG_QPTS_LEN];

 mlxsw_reg_qpts_pack(qpts_pl, mlxsw_sp_port->local_port, ts);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(qpts), qpts_pl);
}

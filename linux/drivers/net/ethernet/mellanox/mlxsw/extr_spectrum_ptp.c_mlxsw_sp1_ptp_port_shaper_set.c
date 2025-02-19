
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_QEEC_LEN ;
 int mlxsw_reg_qeec_ptps_pack (char*,int ,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int qeec ;

__attribute__((used)) static int
mlxsw_sp1_ptp_port_shaper_set(struct mlxsw_sp_port *mlxsw_sp_port, bool enable)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char qeec_pl[MLXSW_REG_QEEC_LEN];

 mlxsw_reg_qeec_ptps_pack(qeec_pl, mlxsw_sp_port->local_port, enable);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(qeec), qeec_pl);
}

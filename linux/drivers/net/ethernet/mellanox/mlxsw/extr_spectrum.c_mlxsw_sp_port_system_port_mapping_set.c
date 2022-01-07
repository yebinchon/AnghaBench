
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SSPR_LEN ;
 int mlxsw_reg_sspr_pack (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int sspr ;

__attribute__((used)) static int
mlxsw_sp_port_system_port_mapping_set(struct mlxsw_sp_port *mlxsw_sp_port)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char sspr_pl[MLXSW_REG_SSPR_LEN];

 mlxsw_reg_sspr_pack(sspr_pl, mlxsw_sp_port->local_port);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(sspr), sspr_pl);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sx_port {int local_port; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SSPR_LEN ;
 int mlxsw_reg_sspr_pack (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int sspr ;

__attribute__((used)) static int
mlxsw_sx_port_system_port_mapping_set(struct mlxsw_sx_port *mlxsw_sx_port)
{
 struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
 char sspr_pl[MLXSW_REG_SSPR_LEN];

 mlxsw_reg_sspr_pack(sspr_pl, mlxsw_sx_port->local_port);
 return mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(sspr), sspr_pl);
}

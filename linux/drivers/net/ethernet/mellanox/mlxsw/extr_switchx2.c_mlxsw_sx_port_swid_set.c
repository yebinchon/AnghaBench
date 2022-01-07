
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sx_port {int local_port; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PSPA_LEN ;
 int mlxsw_reg_pspa_pack (char*,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int pspa ;

__attribute__((used)) static int mlxsw_sx_port_swid_set(struct mlxsw_sx_port *mlxsw_sx_port, u8 swid)
{
 struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
 char pspa_pl[MLXSW_REG_PSPA_LEN];

 mlxsw_reg_pspa_pack(pspa_pl, swid, mlxsw_sx_port->local_port);
 return mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(pspa), pspa_pl);
}

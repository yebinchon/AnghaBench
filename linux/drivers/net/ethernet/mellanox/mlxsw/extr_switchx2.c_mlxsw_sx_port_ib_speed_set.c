
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sx_port {int local_port; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTYS_LEN ;
 int mlxsw_reg_ptys_ib_pack (char*,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ptys ;

__attribute__((used)) static int mlxsw_sx_port_ib_speed_set(struct mlxsw_sx_port *mlxsw_sx_port,
          u16 speed, u16 width)
{
 struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
 char ptys_pl[MLXSW_REG_PTYS_LEN];

 mlxsw_reg_ptys_ib_pack(ptys_pl, mlxsw_sx_port->local_port, speed,
          width);
 return mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(ptys), ptys_pl);
}

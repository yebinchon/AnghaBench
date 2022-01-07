
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlxsw_sx_port {int local_port; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTYS_LEN ;
 int MLXSW_SX_PORT_BASE_SPEED ;
 int mlxsw_reg_ptys_eth_pack (char*,int ,int,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sx_to_ptys_upper_speed (int) ;
 int ptys ;

__attribute__((used)) static int
mlxsw_sx_port_speed_by_width_set(struct mlxsw_sx_port *mlxsw_sx_port, u8 width)
{
 struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
 u32 upper_speed = MLXSW_SX_PORT_BASE_SPEED * width;
 char ptys_pl[MLXSW_REG_PTYS_LEN];
 u32 eth_proto_admin;

 eth_proto_admin = mlxsw_sx_to_ptys_upper_speed(upper_speed);
 mlxsw_reg_ptys_eth_pack(ptys_pl, mlxsw_sx_port->local_port,
    eth_proto_admin, 1);
 return mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(ptys), ptys_pl);
}

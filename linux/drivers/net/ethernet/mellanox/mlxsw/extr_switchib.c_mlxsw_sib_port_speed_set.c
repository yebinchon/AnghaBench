
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sib_port {int local_port; struct mlxsw_sib* mlxsw_sib; } ;
struct mlxsw_sib {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTYS_LEN ;
 int mlxsw_reg_ptys_ib_pack (char*,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ptys ;

__attribute__((used)) static int mlxsw_sib_port_speed_set(struct mlxsw_sib_port *mlxsw_sib_port,
        u16 speed, u16 width)
{
 struct mlxsw_sib *mlxsw_sib = mlxsw_sib_port->mlxsw_sib;
 char ptys_pl[MLXSW_REG_PTYS_LEN];

 mlxsw_reg_ptys_ib_pack(ptys_pl, mlxsw_sib_port->local_port, speed,
          width);
 return mlxsw_reg_write(mlxsw_sib->core, MLXSW_REG(ptys), ptys_pl);
}

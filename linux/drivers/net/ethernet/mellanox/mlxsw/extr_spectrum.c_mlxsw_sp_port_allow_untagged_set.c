
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SPAFT_LEN ;
 int mlxsw_reg_spaft_pack (char*,int ,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int spaft ;

__attribute__((used)) static int mlxsw_sp_port_allow_untagged_set(struct mlxsw_sp_port *mlxsw_sp_port,
         bool allow)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char spaft_pl[MLXSW_REG_SPAFT_LEN];

 mlxsw_reg_spaft_pack(spaft_pl, mlxsw_sp_port->local_port, allow);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(spaft), spaft_pl);
}

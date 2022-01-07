
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PMLP_LEN ;
 int mlxsw_reg_pmlp_pack (char*,int ) ;
 int mlxsw_reg_pmlp_width_set (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int pmlp ;

__attribute__((used)) static int mlxsw_sp_port_module_unmap(struct mlxsw_sp_port *mlxsw_sp_port)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char pmlp_pl[MLXSW_REG_PMLP_LEN];

 mlxsw_reg_pmlp_pack(pmlp_pl, mlxsw_sp_port->local_port);
 mlxsw_reg_pmlp_width_set(pmlp_pl, 0);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(pmlp), pmlp_pl);
}

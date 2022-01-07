
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sx {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PMLP_LEN ;
 int mlxsw_reg_pmlp_module_get (char*,int ) ;
 int mlxsw_reg_pmlp_pack (char*,int ) ;
 int mlxsw_reg_pmlp_width_get (char*) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int pmlp ;

__attribute__((used)) static int mlxsw_sx_port_module_info_get(struct mlxsw_sx *mlxsw_sx,
      u8 local_port, u8 *p_module,
      u8 *p_width)
{
 char pmlp_pl[MLXSW_REG_PMLP_LEN];
 int err;

 mlxsw_reg_pmlp_pack(pmlp_pl, local_port);
 err = mlxsw_reg_query(mlxsw_sx->core, MLXSW_REG(pmlp), pmlp_pl);
 if (err)
  return err;
 *p_module = mlxsw_reg_pmlp_module_get(pmlp_pl, 0);
 *p_width = mlxsw_reg_pmlp_width_get(pmlp_pl);
 return 0;
}

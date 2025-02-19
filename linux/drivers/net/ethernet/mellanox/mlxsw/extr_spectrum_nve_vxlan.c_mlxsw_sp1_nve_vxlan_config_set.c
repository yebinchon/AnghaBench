
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_nve_config {int learning_en; int ul_tb_id; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_TNGCR_LEN ;
 int mlxsw_reg_tngcr_learn_enable_set (char*,int ) ;
 int mlxsw_reg_tngcr_underlay_virtual_router_set (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_nve_vxlan_config_prepare (char*,struct mlxsw_sp_nve_config const*) ;
 int mlxsw_sp_router_tb_id_vr_id (struct mlxsw_sp*,int ,int *) ;
 int tngcr ;

__attribute__((used)) static int
mlxsw_sp1_nve_vxlan_config_set(struct mlxsw_sp *mlxsw_sp,
          const struct mlxsw_sp_nve_config *config)
{
 char tngcr_pl[MLXSW_REG_TNGCR_LEN];
 u16 ul_vr_id;
 int err;

 err = mlxsw_sp_router_tb_id_vr_id(mlxsw_sp, config->ul_tb_id,
       &ul_vr_id);
 if (err)
  return err;

 mlxsw_sp_nve_vxlan_config_prepare(tngcr_pl, config);
 mlxsw_reg_tngcr_learn_enable_set(tngcr_pl, config->learning_en);
 mlxsw_reg_tngcr_underlay_virtual_router_set(tngcr_pl, ul_vr_id);

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(tngcr), tngcr_pl);
}

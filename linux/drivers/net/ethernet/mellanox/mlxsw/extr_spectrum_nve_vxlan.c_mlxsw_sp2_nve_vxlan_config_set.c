
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mlxsw_sp_nve_config {int learning_en; int ul_tb_id; } ;
struct mlxsw_sp {int core; TYPE_1__* nve; } ;
struct TYPE_2__ {int ul_rif_index; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_TNGCR_LEN ;
 int mlxsw_reg_tngcr_underlay_rif_set (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp2_nve_vxlan_learning_set (struct mlxsw_sp*,int) ;
 int mlxsw_sp_nve_vxlan_config_prepare (char*,struct mlxsw_sp_nve_config const*) ;
 int mlxsw_sp_router_ul_rif_get (struct mlxsw_sp*,int ,int *) ;
 int mlxsw_sp_router_ul_rif_put (struct mlxsw_sp*,int ) ;
 int tngcr ;

__attribute__((used)) static int
mlxsw_sp2_nve_vxlan_config_set(struct mlxsw_sp *mlxsw_sp,
          const struct mlxsw_sp_nve_config *config)
{
 char tngcr_pl[MLXSW_REG_TNGCR_LEN];
 u16 ul_rif_index;
 int err;

 err = mlxsw_sp_router_ul_rif_get(mlxsw_sp, config->ul_tb_id,
      &ul_rif_index);
 if (err)
  return err;
 mlxsw_sp->nve->ul_rif_index = ul_rif_index;

 err = mlxsw_sp2_nve_vxlan_learning_set(mlxsw_sp, config->learning_en);
 if (err)
  goto err_vxlan_learning_set;

 mlxsw_sp_nve_vxlan_config_prepare(tngcr_pl, config);
 mlxsw_reg_tngcr_underlay_rif_set(tngcr_pl, ul_rif_index);

 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(tngcr), tngcr_pl);
 if (err)
  goto err_tngcr_write;

 return 0;

err_tngcr_write:
 mlxsw_sp2_nve_vxlan_learning_set(mlxsw_sp, 0);
err_vxlan_learning_set:
 mlxsw_sp_router_ul_rif_put(mlxsw_sp, ul_rif_index);
 return err;
}

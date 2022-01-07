
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {TYPE_1__* nve; int core; } ;
struct TYPE_2__ {int ul_rif_index; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_TNGCR_LEN ;
 int MLXSW_REG_TNGCR_TYPE_VXLAN ;
 int mlxsw_reg_tngcr_pack (char*,int ,int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp2_nve_vxlan_learning_set (struct mlxsw_sp*,int) ;
 int mlxsw_sp_router_ul_rif_put (struct mlxsw_sp*,int ) ;
 int tngcr ;

__attribute__((used)) static void mlxsw_sp2_nve_vxlan_config_clear(struct mlxsw_sp *mlxsw_sp)
{
 char tngcr_pl[MLXSW_REG_TNGCR_LEN];

 mlxsw_reg_tngcr_pack(tngcr_pl, MLXSW_REG_TNGCR_TYPE_VXLAN, 0, 0);
 mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(tngcr), tngcr_pl);
 mlxsw_sp2_nve_vxlan_learning_set(mlxsw_sp, 0);
 mlxsw_sp_router_ul_rif_put(mlxsw_sp, mlxsw_sp->nve->ul_rif_index);
}

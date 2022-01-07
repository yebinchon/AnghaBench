
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_atcam {int erp_core; } ;
struct mlxsw_sp {int dummy; } ;


 int kfree (int ) ;
 int mlxsw_sp_acl_erp_tables_fini (struct mlxsw_sp*,int ) ;

void mlxsw_sp_acl_erps_fini(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_acl_atcam *atcam)
{
 mlxsw_sp_acl_erp_tables_fini(mlxsw_sp, atcam->erp_core);
 kfree(atcam->erp_core);
}

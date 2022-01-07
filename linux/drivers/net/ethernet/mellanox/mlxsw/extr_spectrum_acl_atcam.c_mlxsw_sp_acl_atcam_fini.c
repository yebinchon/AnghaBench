
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_atcam {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_erps_fini (struct mlxsw_sp*,struct mlxsw_sp_acl_atcam*) ;

void mlxsw_sp_acl_atcam_fini(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_acl_atcam *atcam)
{
 mlxsw_sp_acl_erps_fini(mlxsw_sp, atcam);
}

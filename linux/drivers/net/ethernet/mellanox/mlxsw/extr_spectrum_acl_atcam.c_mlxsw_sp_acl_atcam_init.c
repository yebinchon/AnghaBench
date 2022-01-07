
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_atcam {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_erps_init (struct mlxsw_sp*,struct mlxsw_sp_acl_atcam*) ;

int mlxsw_sp_acl_atcam_init(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_acl_atcam *atcam)
{
 return mlxsw_sp_acl_erps_init(mlxsw_sp, atcam);
}

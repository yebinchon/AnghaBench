
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_profile_ops {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef enum mlxsw_sp_acl_profile { ____Placeholder_mlxsw_sp_acl_profile } mlxsw_sp_acl_profile ;


 int ARRAY_SIZE (struct mlxsw_sp_acl_profile_ops**) ;
 scalar_t__ WARN_ON (int) ;
 struct mlxsw_sp_acl_profile_ops** mlxsw_sp_acl_tcam_profile_ops_arr ;

const struct mlxsw_sp_acl_profile_ops *
mlxsw_sp_acl_tcam_profile_ops(struct mlxsw_sp *mlxsw_sp,
         enum mlxsw_sp_acl_profile profile)
{
 const struct mlxsw_sp_acl_profile_ops *ops;

 if (WARN_ON(profile >= ARRAY_SIZE(mlxsw_sp_acl_tcam_profile_ops_arr)))
  return ((void*)0);
 ops = mlxsw_sp_acl_tcam_profile_ops_arr[profile];
 if (WARN_ON(!ops))
  return ((void*)0);
 return ops;
}

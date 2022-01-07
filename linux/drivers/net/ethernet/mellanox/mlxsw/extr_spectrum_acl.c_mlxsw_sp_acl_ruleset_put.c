
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_ruleset {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_ruleset_ref_dec (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*) ;

void mlxsw_sp_acl_ruleset_put(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_acl_ruleset *ruleset)
{
 mlxsw_sp_acl_ruleset_ref_dec(mlxsw_sp, ruleset);
}

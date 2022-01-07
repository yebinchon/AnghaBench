
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_ruleset {scalar_t__ ref_count; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_ruleset_destroy (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*) ;

__attribute__((used)) static void mlxsw_sp_acl_ruleset_ref_dec(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_acl_ruleset *ruleset)
{
 if (--ruleset->ref_count)
  return;
 mlxsw_sp_acl_ruleset_destroy(mlxsw_sp, ruleset);
}

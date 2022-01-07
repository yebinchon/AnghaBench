
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_ruleset {int dummy; } ;
struct mlxsw_sp_acl_rule {int rulei; struct mlxsw_sp_acl_ruleset* ruleset; } ;
struct mlxsw_sp {int dummy; } ;


 int kfree (struct mlxsw_sp_acl_rule*) ;
 int mlxsw_sp_acl_rulei_destroy (int ) ;
 int mlxsw_sp_acl_ruleset_ref_dec (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*) ;

void mlxsw_sp_acl_rule_destroy(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_acl_rule *rule)
{
 struct mlxsw_sp_acl_ruleset *ruleset = rule->ruleset;

 mlxsw_sp_acl_rulei_destroy(rule->rulei);
 kfree(rule);
 mlxsw_sp_acl_ruleset_ref_dec(mlxsw_sp, ruleset);
}

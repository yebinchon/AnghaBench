
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mlxsw_sp_acl_profile_ops* ops; } ;
struct mlxsw_sp_acl_ruleset {TYPE_1__ ht_key; } ;
struct mlxsw_sp_acl_rule {int last_used; int priv; struct mlxsw_sp_acl_ruleset* ruleset; } ;
struct mlxsw_sp_acl_profile_ops {int (* rule_activity_get ) (struct mlxsw_sp*,int ,int*) ;} ;
struct mlxsw_sp {int dummy; } ;


 int jiffies ;
 int stub1 (struct mlxsw_sp*,int ,int*) ;

__attribute__((used)) static int mlxsw_sp_acl_rule_activity_update(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_acl_rule *rule)
{
 struct mlxsw_sp_acl_ruleset *ruleset = rule->ruleset;
 const struct mlxsw_sp_acl_profile_ops *ops = ruleset->ht_key.ops;
 bool active;
 int err;

 err = ops->rule_activity_get(mlxsw_sp, rule->priv, &active);
 if (err)
  return err;
 if (active)
  rule->last_used = jiffies;
 return 0;
}

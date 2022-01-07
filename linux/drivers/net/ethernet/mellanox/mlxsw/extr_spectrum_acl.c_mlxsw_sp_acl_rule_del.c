
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct mlxsw_sp_acl_block* block; int chain_index; struct mlxsw_sp_acl_profile_ops* ops; } ;
struct mlxsw_sp_acl_ruleset {int rule_ht; TYPE_2__ ht_key; } ;
struct mlxsw_sp_acl_rule {int priv; int ht_node; int list; TYPE_1__* rulei; struct mlxsw_sp_acl_ruleset* ruleset; } ;
struct mlxsw_sp_acl_profile_ops {int (* rule_del ) (struct mlxsw_sp*,int ) ;} ;
struct mlxsw_sp_acl_block {int rule_count; int egress_blocker_rule_count; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_3__ {scalar_t__ egress_bind_blocker; } ;


 int list_del (int *) ;
 int mlxsw_sp_acl_rule_ht_params ;
 int mlxsw_sp_acl_ruleset_block_unbind (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*,struct mlxsw_sp_acl_block*) ;
 scalar_t__ mlxsw_sp_acl_ruleset_is_singular (struct mlxsw_sp_acl_ruleset*) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int stub1 (struct mlxsw_sp*,int ) ;

void mlxsw_sp_acl_rule_del(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_acl_rule *rule)
{
 struct mlxsw_sp_acl_ruleset *ruleset = rule->ruleset;
 const struct mlxsw_sp_acl_profile_ops *ops = ruleset->ht_key.ops;
 struct mlxsw_sp_acl_block *block = ruleset->ht_key.block;

 block->egress_blocker_rule_count -= rule->rulei->egress_bind_blocker;
 ruleset->ht_key.block->rule_count--;
 list_del(&rule->list);
 if (!ruleset->ht_key.chain_index &&
     mlxsw_sp_acl_ruleset_is_singular(ruleset))
  mlxsw_sp_acl_ruleset_block_unbind(mlxsw_sp, ruleset,
        ruleset->ht_key.block);
 rhashtable_remove_fast(&ruleset->rule_ht, &rule->ht_node,
          mlxsw_sp_acl_rule_ht_params);
 ops->rule_del(mlxsw_sp, rule->priv);
}

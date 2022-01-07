
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chain_index; struct mlxsw_sp_acl_block* block; struct mlxsw_sp_acl_profile_ops* ops; } ;
struct mlxsw_sp_acl_ruleset {int rule_ht; TYPE_1__ ht_key; int priv; } ;
struct mlxsw_sp_acl_rule {int priv; int ht_node; TYPE_3__* rulei; int list; struct mlxsw_sp_acl_ruleset* ruleset; } ;
struct mlxsw_sp_acl_profile_ops {int (* rule_add ) (struct mlxsw_sp*,int ,int ,TYPE_3__*) ;int (* rule_del ) (struct mlxsw_sp*,int ) ;} ;
struct mlxsw_sp_acl_block {int egress_blocker_rule_count; int rule_count; } ;
struct mlxsw_sp {TYPE_2__* acl; } ;
struct TYPE_6__ {scalar_t__ egress_bind_blocker; } ;
struct TYPE_5__ {int rules; } ;


 int list_add_tail (int *,int *) ;
 int mlxsw_sp_acl_rule_ht_params ;
 int mlxsw_sp_acl_ruleset_block_bind (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*,struct mlxsw_sp_acl_block*) ;
 scalar_t__ mlxsw_sp_acl_ruleset_is_singular (struct mlxsw_sp_acl_ruleset*) ;
 int rhashtable_insert_fast (int *,int *,int ) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int stub1 (struct mlxsw_sp*,int ,int ,TYPE_3__*) ;
 int stub2 (struct mlxsw_sp*,int ) ;

int mlxsw_sp_acl_rule_add(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_rule *rule)
{
 struct mlxsw_sp_acl_ruleset *ruleset = rule->ruleset;
 const struct mlxsw_sp_acl_profile_ops *ops = ruleset->ht_key.ops;
 struct mlxsw_sp_acl_block *block = ruleset->ht_key.block;
 int err;

 err = ops->rule_add(mlxsw_sp, ruleset->priv, rule->priv, rule->rulei);
 if (err)
  return err;

 err = rhashtable_insert_fast(&ruleset->rule_ht, &rule->ht_node,
         mlxsw_sp_acl_rule_ht_params);
 if (err)
  goto err_rhashtable_insert;

 if (!ruleset->ht_key.chain_index &&
     mlxsw_sp_acl_ruleset_is_singular(ruleset)) {




  err = mlxsw_sp_acl_ruleset_block_bind(mlxsw_sp, ruleset, block);
  if (err)
   goto err_ruleset_block_bind;
 }

 list_add_tail(&rule->list, &mlxsw_sp->acl->rules);
 block->rule_count++;
 block->egress_blocker_rule_count += rule->rulei->egress_bind_blocker;
 return 0;

err_ruleset_block_bind:
 rhashtable_remove_fast(&ruleset->rule_ht, &rule->ht_node,
          mlxsw_sp_acl_rule_ht_params);
err_rhashtable_insert:
 ops->rule_del(mlxsw_sp, rule->priv);
 return err;
}

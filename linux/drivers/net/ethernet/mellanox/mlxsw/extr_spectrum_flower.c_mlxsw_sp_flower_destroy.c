
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_ruleset {int dummy; } ;
struct mlxsw_sp_acl_rule {int dummy; } ;
struct mlxsw_sp_acl_block {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {int chain_index; } ;
struct flow_cls_offload {int cookie; TYPE_1__ common; } ;


 scalar_t__ IS_ERR (struct mlxsw_sp_acl_ruleset*) ;
 int MLXSW_SP_ACL_PROFILE_FLOWER ;
 int mlxsw_sp_acl_rule_del (struct mlxsw_sp*,struct mlxsw_sp_acl_rule*) ;
 int mlxsw_sp_acl_rule_destroy (struct mlxsw_sp*,struct mlxsw_sp_acl_rule*) ;
 struct mlxsw_sp_acl_rule* mlxsw_sp_acl_rule_lookup (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*,int ) ;
 struct mlxsw_sp_acl_ruleset* mlxsw_sp_acl_ruleset_get (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,int ,int ,int *) ;
 int mlxsw_sp_acl_ruleset_put (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*) ;

void mlxsw_sp_flower_destroy(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_acl_block *block,
        struct flow_cls_offload *f)
{
 struct mlxsw_sp_acl_ruleset *ruleset;
 struct mlxsw_sp_acl_rule *rule;

 ruleset = mlxsw_sp_acl_ruleset_get(mlxsw_sp, block,
        f->common.chain_index,
        MLXSW_SP_ACL_PROFILE_FLOWER, ((void*)0));
 if (IS_ERR(ruleset))
  return;

 rule = mlxsw_sp_acl_rule_lookup(mlxsw_sp, ruleset, f->cookie);
 if (rule) {
  mlxsw_sp_acl_rule_del(mlxsw_sp, rule);
  mlxsw_sp_acl_rule_destroy(mlxsw_sp, rule);
 }

 mlxsw_sp_acl_ruleset_put(mlxsw_sp, ruleset);
}

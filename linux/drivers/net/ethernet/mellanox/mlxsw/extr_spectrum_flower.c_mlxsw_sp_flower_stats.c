
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mlxsw_sp_acl_ruleset {int dummy; } ;
struct mlxsw_sp_acl_rule {int dummy; } ;
struct mlxsw_sp_acl_block {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {int chain_index; } ;
struct flow_cls_offload {int stats; int cookie; TYPE_1__ common; } ;


 int EINVAL ;
 int IS_ERR (struct mlxsw_sp_acl_ruleset*) ;
 int MLXSW_SP_ACL_PROFILE_FLOWER ;
 scalar_t__ WARN_ON (int ) ;
 int flow_stats_update (int *,int ,int ,int ) ;
 int mlxsw_sp_acl_rule_get_stats (struct mlxsw_sp*,struct mlxsw_sp_acl_rule*,int *,int *,int *) ;
 struct mlxsw_sp_acl_rule* mlxsw_sp_acl_rule_lookup (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*,int ) ;
 struct mlxsw_sp_acl_ruleset* mlxsw_sp_acl_ruleset_get (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,int ,int ,int *) ;
 int mlxsw_sp_acl_ruleset_put (struct mlxsw_sp*,struct mlxsw_sp_acl_ruleset*) ;

int mlxsw_sp_flower_stats(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_block *block,
     struct flow_cls_offload *f)
{
 struct mlxsw_sp_acl_ruleset *ruleset;
 struct mlxsw_sp_acl_rule *rule;
 u64 packets;
 u64 lastuse;
 u64 bytes;
 int err;

 ruleset = mlxsw_sp_acl_ruleset_get(mlxsw_sp, block,
        f->common.chain_index,
        MLXSW_SP_ACL_PROFILE_FLOWER, ((void*)0));
 if (WARN_ON(IS_ERR(ruleset)))
  return -EINVAL;

 rule = mlxsw_sp_acl_rule_lookup(mlxsw_sp, ruleset, f->cookie);
 if (!rule)
  return -EINVAL;

 err = mlxsw_sp_acl_rule_get_stats(mlxsw_sp, rule, &packets, &bytes,
       &lastuse);
 if (err)
  goto err_rule_get_stats;

 flow_stats_update(&f->stats, bytes, packets, lastuse);

 mlxsw_sp_acl_ruleset_put(mlxsw_sp, ruleset);
 return 0;

err_rule_get_stats:
 mlxsw_sp_acl_ruleset_put(mlxsw_sp, ruleset);
 return err;
}

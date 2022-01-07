
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mlxsw_sp_acl_profile_ops* ops; } ;
struct mlxsw_sp_acl_ruleset {int rule_ht; int priv; int ht_node; TYPE_1__ ht_key; } ;
struct mlxsw_sp_acl_profile_ops {int (* ruleset_del ) (struct mlxsw_sp*,int ) ;} ;
struct mlxsw_sp_acl {int ruleset_ht; } ;
struct mlxsw_sp {struct mlxsw_sp_acl* acl; } ;


 int kfree (struct mlxsw_sp_acl_ruleset*) ;
 int mlxsw_sp_acl_ruleset_ht_params ;
 int rhashtable_destroy (int *) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int stub1 (struct mlxsw_sp*,int ) ;

__attribute__((used)) static void mlxsw_sp_acl_ruleset_destroy(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_acl_ruleset *ruleset)
{
 const struct mlxsw_sp_acl_profile_ops *ops = ruleset->ht_key.ops;
 struct mlxsw_sp_acl *acl = mlxsw_sp->acl;

 rhashtable_remove_fast(&acl->ruleset_ht, &ruleset->ht_node,
          mlxsw_sp_acl_ruleset_ht_params);
 ops->ruleset_del(mlxsw_sp, ruleset->priv);
 rhashtable_destroy(&ruleset->rule_ht);
 kfree(ruleset);
}

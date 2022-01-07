
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct mlxsw_sp_acl_profile_ops const* ops; int chain_index; struct mlxsw_sp_acl_block* block; } ;
struct mlxsw_sp_acl_ruleset {int ref_count; int rule_ht; int priv; int ht_node; TYPE_1__ ht_key; } ;
struct mlxsw_sp_acl_profile_ops {int ruleset_priv_size; int (* ruleset_add ) (struct mlxsw_sp*,int *,int ,struct mlxsw_afk_element_usage*) ;int (* ruleset_del ) (struct mlxsw_sp*,int ) ;} ;
struct mlxsw_sp_acl_block {int dummy; } ;
struct mlxsw_sp_acl {int ruleset_ht; int tcam; } ;
struct mlxsw_sp {struct mlxsw_sp_acl* acl; } ;
struct mlxsw_afk_element_usage {int dummy; } ;


 int ENOMEM ;
 struct mlxsw_sp_acl_ruleset* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct mlxsw_sp_acl_ruleset*) ;
 struct mlxsw_sp_acl_ruleset* kzalloc (size_t,int ) ;
 int mlxsw_sp_acl_rule_ht_params ;
 int mlxsw_sp_acl_ruleset_ht_params ;
 int rhashtable_destroy (int *) ;
 int rhashtable_init (int *,int *) ;
 int rhashtable_insert_fast (int *,int *,int ) ;
 int stub1 (struct mlxsw_sp*,int *,int ,struct mlxsw_afk_element_usage*) ;
 int stub2 (struct mlxsw_sp*,int ) ;

__attribute__((used)) static struct mlxsw_sp_acl_ruleset *
mlxsw_sp_acl_ruleset_create(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_acl_block *block, u32 chain_index,
       const struct mlxsw_sp_acl_profile_ops *ops,
       struct mlxsw_afk_element_usage *tmplt_elusage)
{
 struct mlxsw_sp_acl *acl = mlxsw_sp->acl;
 struct mlxsw_sp_acl_ruleset *ruleset;
 size_t alloc_size;
 int err;

 alloc_size = sizeof(*ruleset) + ops->ruleset_priv_size;
 ruleset = kzalloc(alloc_size, GFP_KERNEL);
 if (!ruleset)
  return ERR_PTR(-ENOMEM);
 ruleset->ref_count = 1;
 ruleset->ht_key.block = block;
 ruleset->ht_key.chain_index = chain_index;
 ruleset->ht_key.ops = ops;

 err = rhashtable_init(&ruleset->rule_ht, &mlxsw_sp_acl_rule_ht_params);
 if (err)
  goto err_rhashtable_init;

 err = ops->ruleset_add(mlxsw_sp, &acl->tcam, ruleset->priv,
          tmplt_elusage);
 if (err)
  goto err_ops_ruleset_add;

 err = rhashtable_insert_fast(&acl->ruleset_ht, &ruleset->ht_node,
         mlxsw_sp_acl_ruleset_ht_params);
 if (err)
  goto err_ht_insert;

 return ruleset;

err_ht_insert:
 ops->ruleset_del(mlxsw_sp, ruleset->priv);
err_ops_ruleset_add:
 rhashtable_destroy(&ruleset->rule_ht);
err_rhashtable_init:
 kfree(ruleset);
 return ERR_PTR(err);
}

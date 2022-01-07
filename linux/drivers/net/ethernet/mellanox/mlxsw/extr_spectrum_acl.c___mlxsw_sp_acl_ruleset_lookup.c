
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp_acl_ruleset_ht_key {struct mlxsw_sp_acl_profile_ops const* ops; int chain_index; struct mlxsw_sp_acl_block* block; } ;
struct mlxsw_sp_acl_ruleset {int dummy; } ;
struct mlxsw_sp_acl_profile_ops {int dummy; } ;
struct mlxsw_sp_acl_block {int dummy; } ;
struct mlxsw_sp_acl {int ruleset_ht; } ;
typedef int ht_key ;


 int memset (struct mlxsw_sp_acl_ruleset_ht_key*,int ,int) ;
 int mlxsw_sp_acl_ruleset_ht_params ;
 struct mlxsw_sp_acl_ruleset* rhashtable_lookup_fast (int *,struct mlxsw_sp_acl_ruleset_ht_key*,int ) ;

__attribute__((used)) static struct mlxsw_sp_acl_ruleset *
__mlxsw_sp_acl_ruleset_lookup(struct mlxsw_sp_acl *acl,
         struct mlxsw_sp_acl_block *block, u32 chain_index,
         const struct mlxsw_sp_acl_profile_ops *ops)
{
 struct mlxsw_sp_acl_ruleset_ht_key ht_key;

 memset(&ht_key, 0, sizeof(ht_key));
 ht_key.block = block;
 ht_key.chain_index = chain_index;
 ht_key.ops = ops;
 return rhashtable_lookup_fast(&acl->ruleset_ht, &ht_key,
          mlxsw_sp_acl_ruleset_ht_params);
}

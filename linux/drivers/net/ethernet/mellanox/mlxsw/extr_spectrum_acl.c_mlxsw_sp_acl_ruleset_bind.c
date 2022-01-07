
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mlxsw_sp_acl_profile_ops* ops; } ;
struct mlxsw_sp_acl_ruleset {int priv; TYPE_1__ ht_key; } ;
struct mlxsw_sp_acl_profile_ops {int (* ruleset_bind ) (struct mlxsw_sp*,int ,int ,int ) ;} ;
struct mlxsw_sp_acl_block_binding {int ingress; int mlxsw_sp_port; } ;
struct mlxsw_sp_acl_block {struct mlxsw_sp_acl_ruleset* ruleset_zero; } ;
struct mlxsw_sp {int dummy; } ;


 int stub1 (struct mlxsw_sp*,int ,int ,int ) ;

__attribute__((used)) static int
mlxsw_sp_acl_ruleset_bind(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_block *block,
     struct mlxsw_sp_acl_block_binding *binding)
{
 struct mlxsw_sp_acl_ruleset *ruleset = block->ruleset_zero;
 const struct mlxsw_sp_acl_profile_ops *ops = ruleset->ht_key.ops;

 return ops->ruleset_bind(mlxsw_sp, ruleset->priv,
     binding->mlxsw_sp_port, binding->ingress);
}

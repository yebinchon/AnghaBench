
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int dummy; } ;
struct mlxsw_sp_acl_block_binding {int list; } ;
struct mlxsw_sp_acl_block {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int ENOENT ;
 int kfree (struct mlxsw_sp_acl_block_binding*) ;
 int list_del (int *) ;
 struct mlxsw_sp_acl_block_binding* mlxsw_sp_acl_block_lookup (struct mlxsw_sp_acl_block*,struct mlxsw_sp_port*,int) ;
 scalar_t__ mlxsw_sp_acl_ruleset_block_bound (struct mlxsw_sp_acl_block*) ;
 int mlxsw_sp_acl_ruleset_unbind (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct mlxsw_sp_acl_block_binding*) ;

int mlxsw_sp_acl_block_unbind(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_acl_block *block,
         struct mlxsw_sp_port *mlxsw_sp_port,
         bool ingress)
{
 struct mlxsw_sp_acl_block_binding *binding;

 binding = mlxsw_sp_acl_block_lookup(block, mlxsw_sp_port, ingress);
 if (!binding)
  return -ENOENT;

 list_del(&binding->list);

 if (mlxsw_sp_acl_ruleset_block_bound(block))
  mlxsw_sp_acl_ruleset_unbind(mlxsw_sp, block, binding);

 kfree(binding);
 return 0;
}

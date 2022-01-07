
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_block {int binding_list; } ;


 int WARN_ON (int) ;
 int kfree (struct mlxsw_sp_acl_block*) ;
 int list_empty (int *) ;

void mlxsw_sp_acl_block_destroy(struct mlxsw_sp_acl_block *block)
{
 WARN_ON(!list_empty(&block->binding_list));
 kfree(block);
}

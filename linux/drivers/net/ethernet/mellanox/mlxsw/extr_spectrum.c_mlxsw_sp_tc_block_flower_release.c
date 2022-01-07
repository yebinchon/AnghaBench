
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_block {int dummy; } ;


 int mlxsw_sp_acl_block_destroy (struct mlxsw_sp_acl_block*) ;

__attribute__((used)) static void mlxsw_sp_tc_block_flower_release(void *cb_priv)
{
 struct mlxsw_sp_acl_block *acl_block = cb_priv;

 mlxsw_sp_acl_block_destroy(acl_block);
}

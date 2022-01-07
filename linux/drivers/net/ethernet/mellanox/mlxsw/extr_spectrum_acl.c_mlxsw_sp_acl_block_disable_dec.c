
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_block {int disable_count; } ;



void mlxsw_sp_acl_block_disable_dec(struct mlxsw_sp_acl_block *block)
{
 if (block)
  block->disable_count--;
}

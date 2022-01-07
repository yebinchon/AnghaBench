
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_block {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;



struct mlxsw_sp *mlxsw_sp_acl_block_mlxsw_sp(struct mlxsw_sp_acl_block *block)
{
 return block->mlxsw_sp;
}

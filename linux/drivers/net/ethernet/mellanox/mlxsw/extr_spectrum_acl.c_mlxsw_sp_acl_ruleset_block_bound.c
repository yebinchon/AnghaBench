
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_block {int ruleset_zero; } ;



__attribute__((used)) static bool mlxsw_sp_acl_ruleset_block_bound(struct mlxsw_sp_acl_block *block)
{
 return block->ruleset_zero;
}

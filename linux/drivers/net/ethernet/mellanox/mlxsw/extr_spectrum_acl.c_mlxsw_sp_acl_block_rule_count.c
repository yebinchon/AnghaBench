
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_block {unsigned int rule_count; } ;



unsigned int mlxsw_sp_acl_block_rule_count(struct mlxsw_sp_acl_block *block)
{
 return block ? block->rule_count : 0;
}

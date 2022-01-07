
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_rule_info {int act_block; } ;


 int mlxsw_afa_block_commit (int ) ;

int mlxsw_sp_acl_rulei_commit(struct mlxsw_sp_acl_rule_info *rulei)
{
 return mlxsw_afa_block_commit(rulei->act_block);
}

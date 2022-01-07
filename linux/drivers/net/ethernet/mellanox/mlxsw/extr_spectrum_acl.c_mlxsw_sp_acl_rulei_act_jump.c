
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_acl_rule_info {int act_block; } ;


 int mlxsw_afa_block_jump (int ,int ) ;

int mlxsw_sp_acl_rulei_act_jump(struct mlxsw_sp_acl_rule_info *rulei,
    u16 group_id)
{
 return mlxsw_afa_block_jump(rulei->act_block, group_id);
}

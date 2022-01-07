
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_rule_info {int act_block; } ;


 int MLXSW_TRAP_ID_ACL0 ;
 int mlxsw_afa_block_append_trap (int ,int ) ;

int mlxsw_sp_acl_rulei_act_trap(struct mlxsw_sp_acl_rule_info *rulei)
{
 return mlxsw_afa_block_append_trap(rulei->act_block,
        MLXSW_TRAP_ID_ACL0);
}

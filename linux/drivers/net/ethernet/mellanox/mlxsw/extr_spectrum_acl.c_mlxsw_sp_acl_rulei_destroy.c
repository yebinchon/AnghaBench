
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_rule_info {int act_block; scalar_t__ action_created; } ;


 int kfree (struct mlxsw_sp_acl_rule_info*) ;
 int mlxsw_afa_block_destroy (int ) ;

void mlxsw_sp_acl_rulei_destroy(struct mlxsw_sp_acl_rule_info *rulei)
{
 if (rulei->action_created)
  mlxsw_afa_block_destroy(rulei->act_block);
 kfree(rulei);
}

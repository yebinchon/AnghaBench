
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_acl_rule_info {int counter_index; int act_block; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_afa_block_append_counter (int ,int *,struct netlink_ext_ack*) ;

int mlxsw_sp_acl_rulei_act_count(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_rule_info *rulei,
     struct netlink_ext_ack *extack)
{
 return mlxsw_afa_block_append_counter(rulei->act_block,
           &rulei->counter_index, extack);
}

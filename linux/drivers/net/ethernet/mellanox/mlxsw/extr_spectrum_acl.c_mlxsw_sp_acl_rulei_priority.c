
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_rule_info {unsigned int priority; } ;



void mlxsw_sp_acl_rulei_priority(struct mlxsw_sp_acl_rule_info *rulei,
     unsigned int priority)
{
 rulei->priority = priority;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long interval; int dw; } ;
struct mlxsw_sp_acl {TYPE_1__ rule_activity_update; } ;


 int mlxsw_core_schedule_dw (int *,int ) ;
 int msecs_to_jiffies (unsigned long) ;

__attribute__((used)) static void mlxsw_sp_acl_rule_activity_work_schedule(struct mlxsw_sp_acl *acl)
{
 unsigned long interval = acl->rule_activity_update.interval;

 mlxsw_core_schedule_dw(&acl->rule_activity_update.dw,
          msecs_to_jiffies(interval));
}

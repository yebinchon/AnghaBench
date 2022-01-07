
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 scalar_t__ BP_PATH (struct bnx2x*) ;
 int HW_LOCK_RESOURCE_RECOVERY_LEADER_0 ;
 int HW_LOCK_RESOURCE_RECOVERY_LEADER_1 ;

__attribute__((used)) static int bnx2x_get_leader_lock_resource(struct bnx2x *bp)
{
 if (BP_PATH(bp))
  return HW_LOCK_RESOURCE_RECOVERY_LEADER_1;
 else
  return HW_LOCK_RESOURCE_RECOVERY_LEADER_0;
}

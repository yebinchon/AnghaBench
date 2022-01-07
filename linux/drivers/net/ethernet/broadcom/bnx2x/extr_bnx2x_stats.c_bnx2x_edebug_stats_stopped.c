
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;


 scalar_t__ EDEBUG_DRIVER_IF_OP_CODE_DISABLE_STAT ;
 scalar_t__ SHMEM2_HAS (struct bnx2x*,int ) ;
 scalar_t__ SHMEM2_RD (struct bnx2x*,int ) ;
 int * edebug_driver_if ;

__attribute__((used)) static bool bnx2x_edebug_stats_stopped(struct bnx2x *bp)
{
 u32 val;

 if (SHMEM2_HAS(bp, edebug_driver_if[1])) {
  val = SHMEM2_RD(bp, edebug_driver_if[1]);

  if (val == EDEBUG_DRIVER_IF_OP_CODE_DISABLE_STAT)
   return 1;
 }

 return 0;
}

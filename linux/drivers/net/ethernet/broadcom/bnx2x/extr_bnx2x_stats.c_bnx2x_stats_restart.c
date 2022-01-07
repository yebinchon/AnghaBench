
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 scalar_t__ IS_VF (struct bnx2x*) ;
 int bnx2x_stats_comp (struct bnx2x*) ;
 int bnx2x_stats_start (struct bnx2x*) ;

__attribute__((used)) static void bnx2x_stats_restart(struct bnx2x *bp)
{



 if (IS_VF(bp))
  return;

 bnx2x_stats_comp(bp);
 bnx2x_stats_start(bp);
}

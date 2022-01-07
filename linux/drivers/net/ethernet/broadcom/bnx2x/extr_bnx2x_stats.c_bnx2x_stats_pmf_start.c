
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int bnx2x_stats_comp (struct bnx2x*) ;
 int bnx2x_stats_pmf_update (struct bnx2x*) ;
 int bnx2x_stats_start (struct bnx2x*) ;

__attribute__((used)) static void bnx2x_stats_pmf_start(struct bnx2x *bp)
{
 bnx2x_stats_comp(bp);
 bnx2x_stats_pmf_update(bp);
 bnx2x_stats_start(bp);
}

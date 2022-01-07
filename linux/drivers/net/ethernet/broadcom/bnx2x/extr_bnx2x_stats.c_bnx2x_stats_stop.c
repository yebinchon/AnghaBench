
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pmf; } ;
struct bnx2x {TYPE_1__ port; } ;


 int bnx2x_hw_stats_post (struct bnx2x*) ;
 scalar_t__ bnx2x_hw_stats_update (struct bnx2x*) ;
 int bnx2x_net_stats_update (struct bnx2x*) ;
 int bnx2x_port_stats_stop (struct bnx2x*) ;
 int bnx2x_stats_comp (struct bnx2x*) ;
 scalar_t__ bnx2x_storm_stats_update (struct bnx2x*) ;

__attribute__((used)) static void bnx2x_stats_stop(struct bnx2x *bp)
{
 bool update = 0;

 bnx2x_stats_comp(bp);

 if (bp->port.pmf)
  update = (bnx2x_hw_stats_update(bp) == 0);

 update |= (bnx2x_storm_stats_update(bp) == 0);

 if (update) {
  bnx2x_net_stats_update(bp);

  if (bp->port.pmf)
   bnx2x_port_stats_stop(bp);

  bnx2x_hw_stats_post(bp);
  bnx2x_stats_comp(bp);
 }
}

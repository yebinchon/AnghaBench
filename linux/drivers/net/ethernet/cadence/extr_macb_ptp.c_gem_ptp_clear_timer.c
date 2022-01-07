
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ns; scalar_t__ sub_ns; } ;
struct macb {TYPE_1__ tsu_incr; } ;


 int GEM_BF (int ,int ) ;
 int NSINCR ;
 int SUBNSINCR ;
 int TA ;
 int TI ;
 int TISUBN ;
 int gem_writel (struct macb*,int ,int ) ;

__attribute__((used)) static void gem_ptp_clear_timer(struct macb *bp)
{
 bp->tsu_incr.sub_ns = 0;
 bp->tsu_incr.ns = 0;

 gem_writel(bp, TISUBN, GEM_BF(SUBNSINCR, 0));
 gem_writel(bp, TI, GEM_BF(NSINCR, 0));
 gem_writel(bp, TA, 0);
}

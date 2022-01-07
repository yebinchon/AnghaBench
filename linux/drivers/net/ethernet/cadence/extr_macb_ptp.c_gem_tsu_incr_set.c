
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsu_incr {int sub_ns; int ns; } ;
struct macb {int tsu_clk_lock; } ;


 int GEM_BF (int ,int) ;
 int GEM_SUBNSINCRL_SIZE ;
 int NSINCR ;
 int SUBNSINCRH ;
 int SUBNSINCRL ;
 int TI ;
 int TISUBN ;
 int gem_writel (struct macb*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int gem_tsu_incr_set(struct macb *bp, struct tsu_incr *incr_spec)
{
 unsigned long flags;






 spin_lock_irqsave(&bp->tsu_clk_lock, flags);

 gem_writel(bp, TISUBN, GEM_BF(SUBNSINCRL, incr_spec->sub_ns) |
     GEM_BF(SUBNSINCRH, (incr_spec->sub_ns >>
     GEM_SUBNSINCRL_SIZE)));
 gem_writel(bp, TI, GEM_BF(NSINCR, incr_spec->ns));
 spin_unlock_irqrestore(&bp->tsu_clk_lock, flags);

 return 0;
}

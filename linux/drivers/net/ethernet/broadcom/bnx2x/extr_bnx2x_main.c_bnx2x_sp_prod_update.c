
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int spq_prod_idx; } ;


 scalar_t__ BAR_XSTRORM_INTMEM ;
 int BP_FUNC (struct bnx2x*) ;
 int REG_WR16_RELAXED (struct bnx2x*,scalar_t__,int ) ;
 scalar_t__ XSTORM_SPQ_PROD_OFFSET (int) ;
 int mb () ;

__attribute__((used)) static void bnx2x_sp_prod_update(struct bnx2x *bp)
{
 int func = BP_FUNC(bp);






 mb();

 REG_WR16_RELAXED(bp, BAR_XSTRORM_INTMEM + XSTORM_SPQ_PROD_OFFSET(func),
    bp->spq_prod_idx);
}

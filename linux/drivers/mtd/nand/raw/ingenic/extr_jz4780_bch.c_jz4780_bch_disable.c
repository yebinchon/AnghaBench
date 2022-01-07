
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_ecc {scalar_t__ base; } ;


 scalar_t__ BCH_BHCCR ;
 int BCH_BHCR_BCHE ;
 scalar_t__ BCH_BHINT ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void jz4780_bch_disable(struct ingenic_ecc *bch)
{
 writel(readl(bch->base + BCH_BHINT), bch->base + BCH_BHINT);
 writel(BCH_BHCR_BCHE, bch->base + BCH_BHCCR);
}

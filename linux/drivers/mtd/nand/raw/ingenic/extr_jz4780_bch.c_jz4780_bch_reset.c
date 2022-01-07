
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ingenic_ecc_params {int size; int bytes; int strength; } ;
struct ingenic_ecc {scalar_t__ base; } ;


 scalar_t__ BCH_BHCNT ;
 int BCH_BHCNT_BLOCKSIZE_SHIFT ;
 int BCH_BHCNT_PARITYSIZE_SHIFT ;
 scalar_t__ BCH_BHCR ;
 int BCH_BHCR_BCHE ;
 int BCH_BHCR_BSEL_SHIFT ;
 int BCH_BHCR_ENCE ;
 int BCH_BHCR_INIT ;
 scalar_t__ BCH_BHINT ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void jz4780_bch_reset(struct ingenic_ecc *bch,
        struct ingenic_ecc_params *params, bool encode)
{
 u32 reg;


 writel(readl(bch->base + BCH_BHINT), bch->base + BCH_BHINT);


 reg = params->size << BCH_BHCNT_BLOCKSIZE_SHIFT;
 reg |= params->bytes << BCH_BHCNT_PARITYSIZE_SHIFT;
 writel(reg, bch->base + BCH_BHCNT);


 reg = BCH_BHCR_BCHE | BCH_BHCR_INIT;
 reg |= params->strength << BCH_BHCR_BSEL_SHIFT;
 if (encode)
  reg |= BCH_BHCR_ENCE;
 writel(reg, bch->base + BCH_BHCR);
}

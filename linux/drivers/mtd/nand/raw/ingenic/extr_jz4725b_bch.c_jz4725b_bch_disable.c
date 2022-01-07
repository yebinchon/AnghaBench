
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_ecc {scalar_t__ base; } ;


 int BCH_BHCR_BCHE ;
 scalar_t__ BCH_BHINT ;
 int jz4725b_bch_config_clear (struct ingenic_ecc*,int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void jz4725b_bch_disable(struct ingenic_ecc *bch)
{

 writel(readl(bch->base + BCH_BHINT), bch->base + BCH_BHINT);


 jz4725b_bch_config_clear(bch, BCH_BHCR_BCHE);
}

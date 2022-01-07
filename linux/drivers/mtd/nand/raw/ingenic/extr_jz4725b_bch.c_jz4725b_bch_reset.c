
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ingenic_ecc_params {int strength; int size; int bytes; } ;
struct ingenic_ecc {scalar_t__ base; } ;


 scalar_t__ BCH_BHCNT ;
 int BCH_BHCNT_DEC_COUNT_MASK ;
 int BCH_BHCNT_DEC_COUNT_SHIFT ;
 int BCH_BHCNT_ENC_COUNT_MASK ;
 int BCH_BHCNT_ENC_COUNT_SHIFT ;
 int BCH_BHCR_BCHE ;
 int BCH_BHCR_BSEL ;
 int BCH_BHCR_ENCE ;
 int BCH_BHCR_INIT ;
 scalar_t__ BCH_BHINT ;
 int EINVAL ;
 int jz4725b_bch_config_clear (struct ingenic_ecc*,int) ;
 int jz4725b_bch_config_set (struct ingenic_ecc*,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int jz4725b_bch_reset(struct ingenic_ecc *bch,
        struct ingenic_ecc_params *params, bool calc_ecc)
{
 u32 reg, max_value;


 writel(readl(bch->base + BCH_BHINT), bch->base + BCH_BHINT);


 jz4725b_bch_config_clear(bch, 0x1f);
 jz4725b_bch_config_set(bch, BCH_BHCR_BCHE);

 if (params->strength == 8)
  jz4725b_bch_config_set(bch, BCH_BHCR_BSEL);
 else
  jz4725b_bch_config_clear(bch, BCH_BHCR_BSEL);

 if (calc_ecc)
  jz4725b_bch_config_set(bch, BCH_BHCR_ENCE);
 else
  jz4725b_bch_config_clear(bch, BCH_BHCR_ENCE);

 jz4725b_bch_config_set(bch, BCH_BHCR_INIT);

 max_value = BCH_BHCNT_ENC_COUNT_MASK >> BCH_BHCNT_ENC_COUNT_SHIFT;
 if (params->size > max_value)
  return -EINVAL;

 max_value = BCH_BHCNT_DEC_COUNT_MASK >> BCH_BHCNT_DEC_COUNT_SHIFT;
 if (params->size + params->bytes > max_value)
  return -EINVAL;


 reg = params->size << BCH_BHCNT_ENC_COUNT_SHIFT;
 reg |= (params->size + params->bytes) << BCH_BHCNT_DEC_COUNT_SHIFT;
 writel(reg, bch->base + BCH_BHCNT);

 return 0;
}

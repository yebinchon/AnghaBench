
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ingenic_ecc {scalar_t__ base; } ;


 scalar_t__ BCH_BHCSR ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void jz4725b_bch_config_set(struct ingenic_ecc *bch, u32 cfg)
{
 writel(cfg, bch->base + BCH_BHCSR);
}

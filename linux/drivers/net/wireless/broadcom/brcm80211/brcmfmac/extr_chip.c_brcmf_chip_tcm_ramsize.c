
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_core_priv {int dummy; } ;


 int ARMCR4_BANKIDX ;
 int ARMCR4_BANKINFO ;
 int ARMCR4_BSZ_MASK ;
 int ARMCR4_BSZ_MULT ;
 int ARMCR4_CAP ;
 int ARMCR4_TCBANB_MASK ;
 int ARMCR4_TCBANB_SHIFT ;
 int ARMCR4_TCBBNB_MASK ;
 int ARMCR4_TCBBNB_SHIFT ;
 int brcmf_chip_core_read32 (struct brcmf_core_priv*,int ) ;
 int brcmf_chip_core_write32 (struct brcmf_core_priv*,int ,int) ;

__attribute__((used)) static u32 brcmf_chip_tcm_ramsize(struct brcmf_core_priv *cr4)
{
 u32 corecap;
 u32 memsize = 0;
 u32 nab;
 u32 nbb;
 u32 totb;
 u32 bxinfo;
 u32 idx;

 corecap = brcmf_chip_core_read32(cr4, ARMCR4_CAP);

 nab = (corecap & ARMCR4_TCBANB_MASK) >> ARMCR4_TCBANB_SHIFT;
 nbb = (corecap & ARMCR4_TCBBNB_MASK) >> ARMCR4_TCBBNB_SHIFT;
 totb = nab + nbb;

 for (idx = 0; idx < totb; idx++) {
  brcmf_chip_core_write32(cr4, ARMCR4_BANKIDX, idx);
  bxinfo = brcmf_chip_core_read32(cr4, ARMCR4_BANKINFO);
  memsize += ((bxinfo & ARMCR4_BSZ_MASK) + 1) * ARMCR4_BSZ_MULT;
 }

 return memsize;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_desc {int des3; } ;


 int XGMAC_TDES3_SAIC ;
 int XGMAC_TDES3_SAIC_SHIFT ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static void dwxgmac2_set_sarc(struct dma_desc *p, u32 sarc_type)
{
 sarc_type <<= XGMAC_TDES3_SAIC_SHIFT;

 p->des3 |= cpu_to_le32(sarc_type & XGMAC_TDES3_SAIC);
}

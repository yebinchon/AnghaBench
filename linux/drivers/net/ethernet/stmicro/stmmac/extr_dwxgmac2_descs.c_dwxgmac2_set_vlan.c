
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_desc {int des2; } ;


 int XGMAC_TDES2_VTIR ;
 int XGMAC_TDES2_VTIR_SHIFT ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static void dwxgmac2_set_vlan(struct dma_desc *p, u32 type)
{
 type <<= XGMAC_TDES2_VTIR_SHIFT;
 p->des2 |= cpu_to_le32(type & XGMAC_TDES2_VTIR);
}

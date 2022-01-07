
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_desc {int des2; } ;


 int TDES2_VLAN_TAG_MASK ;
 int TDES2_VLAN_TAG_SHIFT ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static void dwmac4_set_vlan(struct dma_desc *p, u32 type)
{
 type <<= TDES2_VLAN_TAG_SHIFT;
 p->des2 |= cpu_to_le32(type & TDES2_VLAN_TAG_MASK);
}

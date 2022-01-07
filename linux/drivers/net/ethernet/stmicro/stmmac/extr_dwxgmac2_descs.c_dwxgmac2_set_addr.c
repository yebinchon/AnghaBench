
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {void* des1; void* des0; } ;
typedef int dma_addr_t ;


 void* cpu_to_le32 (int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void dwxgmac2_set_addr(struct dma_desc *p, dma_addr_t addr)
{
 p->des0 = cpu_to_le32(lower_32_bits(addr));
 p->des1 = cpu_to_le32(upper_32_bits(addr));
}

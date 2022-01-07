
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {scalar_t__ des1; int des0; } ;
typedef int dma_addr_t ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static void dwmac4_set_addr(struct dma_desc *p, dma_addr_t addr)
{
 p->des0 = cpu_to_le32(addr);
 p->des1 = 0;
}

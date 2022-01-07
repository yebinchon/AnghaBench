
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_reg {int dmandptr; } ;


 int writel (int ,int *) ;

__attribute__((used)) static inline void korina_chain_dma(struct dma_reg *ch, u32 dma_addr)
{
 writel(dma_addr, &ch->dmandptr);
}

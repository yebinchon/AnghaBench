
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u16 ;
struct dma_info {int dmadev; } ;
typedef int dma_addr_t ;


 int GFP_ATOMIC ;
 int IS_ALIGNED (int ,int) ;
 int PAGE_SIZE ;
 void* dma_alloc_coherent (int ,int ,int *,int ) ;

__attribute__((used)) static void *dma_alloc_consistent(struct dma_info *di, uint size,
      u16 align_bits, uint *alloced,
      dma_addr_t *pap)
{
 if (align_bits) {
  u16 align = (1 << align_bits);
  if (!IS_ALIGNED(PAGE_SIZE, align))
   size += align;
  *alloced = size;
 }
 return dma_alloc_coherent(di->dmadev, size, pap, GFP_ATOMIC);
}

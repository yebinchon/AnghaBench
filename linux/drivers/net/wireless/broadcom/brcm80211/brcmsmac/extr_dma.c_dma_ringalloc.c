
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;
typedef int u16 ;
struct dma_info {int dmadev; } ;
typedef int dma_addr_t ;


 int dma_align_sizetobits (int) ;
 void* dma_alloc_consistent (struct dma_info*,int,int,int*,int *) ;
 int dma_free_coherent (int ,int,void*,int ) ;
 scalar_t__ roundup (unsigned long,int) ;

__attribute__((used)) static void *dma_ringalloc(struct dma_info *di, u32 boundary, uint size,
      u16 *alignbits, uint *alloced,
      dma_addr_t *descpa)
{
 void *va;
 u32 desc_strtaddr;
 u32 alignbytes = 1 << *alignbits;

 va = dma_alloc_consistent(di, size, *alignbits, alloced, descpa);

 if (((void*)0) == va)
  return ((void*)0);

 desc_strtaddr = (u32) roundup((unsigned long)va, alignbytes);
 if (((desc_strtaddr + size - 1) & boundary) != (desc_strtaddr
       & boundary)) {
  *alignbits = dma_align_sizetobits(size);
  dma_free_coherent(di->dmadev, size, va, *descpa);
  va = dma_alloc_consistent(di, size, *alignbits,
   alloced, descpa);
 }
 return va;
}

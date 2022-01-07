
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
typedef int dma_addr_t ;


 int GFP_KERNEL ;
 void* dma_alloc_coherent (int *,size_t,int *,int ) ;
 int dma_free_coherent (int *,size_t,void*,int ) ;
 void* kcalloc (size_t,size_t,int ) ;

__attribute__((used)) static void *alloc_ring(struct pci_dev *pdev, size_t nelem, size_t elem_size,
   size_t sw_size, dma_addr_t * phys, void *metadata)
{
 size_t len = nelem * elem_size;
 void *s = ((void*)0);
 void *p = dma_alloc_coherent(&pdev->dev, len, phys, GFP_KERNEL);

 if (!p)
  return ((void*)0);
 if (sw_size && metadata) {
  s = kcalloc(nelem, sw_size, GFP_KERNEL);

  if (!s) {
   dma_free_coherent(&pdev->dev, len, p, *phys);
   return ((void*)0);
  }
  *(void **)metadata = s;
 }
 return p;
}

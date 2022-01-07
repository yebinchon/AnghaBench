
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (struct device*,size_t,int *,int ) ;
 int dma_free_coherent (struct device*,size_t,void*,int ) ;
 void* kcalloc (size_t,size_t,int ) ;

__attribute__((used)) static void *alloc_ring(struct device *dev, size_t nelem, size_t hwsize,
   size_t swsize, dma_addr_t *busaddrp, void *swringp,
   size_t stat_size)
{



 size_t hwlen = nelem * hwsize + stat_size;
 void *hwring = dma_alloc_coherent(dev, hwlen, busaddrp, GFP_KERNEL);

 if (!hwring)
  return ((void*)0);





 BUG_ON((swsize != 0) != (swringp != ((void*)0)));
 if (swsize) {
  void *swring = kcalloc(nelem, swsize, GFP_KERNEL);

  if (!swring) {
   dma_free_coherent(dev, hwlen, hwring, *busaddrp);
   return ((void*)0);
  }
  *(void **)swringp = swring;
 }

 return hwring;
}

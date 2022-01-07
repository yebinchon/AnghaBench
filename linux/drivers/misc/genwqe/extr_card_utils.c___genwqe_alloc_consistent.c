
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct genwqe_dev {TYPE_1__* pci_dev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 scalar_t__ MAX_ORDER ;
 void* dma_alloc_coherent (int *,size_t,int *,int ) ;
 scalar_t__ get_order (size_t) ;

void *__genwqe_alloc_consistent(struct genwqe_dev *cd, size_t size,
          dma_addr_t *dma_handle)
{
 if (get_order(size) >= MAX_ORDER)
  return ((void*)0);

 return dma_alloc_coherent(&cd->pci_dev->dev, size, dma_handle,
      GFP_KERNEL);
}

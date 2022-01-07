
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct genwqe_dev {TYPE_1__* pci_dev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,size_t,void*,int ) ;

void __genwqe_free_consistent(struct genwqe_dev *cd, size_t size,
        void *vaddr, dma_addr_t dma_handle)
{
 if (vaddr == ((void*)0))
  return;

 dma_free_coherent(&cd->pci_dev->dev, size, vaddr, dma_handle);
}

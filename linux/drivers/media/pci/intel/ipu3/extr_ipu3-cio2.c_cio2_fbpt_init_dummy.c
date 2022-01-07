
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cio2_device {int dummy_page_bus_addr; int* dummy_lop; int dummy_lop_bus_addr; void* dummy_page; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int CIO2_PAGE_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 int cio2_fbpt_exit_dummy (struct cio2_device*) ;
 void* dma_alloc_coherent (int *,int,int*,int ) ;

__attribute__((used)) static int cio2_fbpt_init_dummy(struct cio2_device *cio2)
{
 unsigned int i;

 cio2->dummy_page = dma_alloc_coherent(&cio2->pci_dev->dev,
           CIO2_PAGE_SIZE,
           &cio2->dummy_page_bus_addr,
           GFP_KERNEL);
 cio2->dummy_lop = dma_alloc_coherent(&cio2->pci_dev->dev,
          CIO2_PAGE_SIZE,
          &cio2->dummy_lop_bus_addr,
          GFP_KERNEL);
 if (!cio2->dummy_page || !cio2->dummy_lop) {
  cio2_fbpt_exit_dummy(cio2);
  return -ENOMEM;
 }




 for (i = 0; i < CIO2_PAGE_SIZE / sizeof(*cio2->dummy_lop); i++)
  cio2->dummy_lop[i] = cio2->dummy_page_bus_addr >> PAGE_SHIFT;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cio2_device {int * dummy_page; int dummy_page_bus_addr; TYPE_1__* pci_dev; int * dummy_lop; int dummy_lop_bus_addr; } ;
struct TYPE_2__ {int dev; } ;


 int CIO2_PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void cio2_fbpt_exit_dummy(struct cio2_device *cio2)
{
 if (cio2->dummy_lop) {
  dma_free_coherent(&cio2->pci_dev->dev, CIO2_PAGE_SIZE,
      cio2->dummy_lop, cio2->dummy_lop_bus_addr);
  cio2->dummy_lop = ((void*)0);
 }
 if (cio2->dummy_page) {
  dma_free_coherent(&cio2->pci_dev->dev, CIO2_PAGE_SIZE,
      cio2->dummy_page, cio2->dummy_page_bus_addr);
  cio2->dummy_page = ((void*)0);
 }
}

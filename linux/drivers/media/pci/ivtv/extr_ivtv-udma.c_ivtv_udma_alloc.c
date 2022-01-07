
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ SG_handle; int SGarray; } ;
struct ivtv {TYPE_1__ udma; int pdev; } ;


 int PCI_DMA_TODEVICE ;
 int ivtv_udma_sync_for_cpu (struct ivtv*) ;
 scalar_t__ pci_map_single (int ,int ,int,int ) ;

void ivtv_udma_alloc(struct ivtv *itv)
{
 if (itv->udma.SG_handle == 0) {

  itv->udma.SG_handle = pci_map_single(itv->pdev, itv->udma.SGarray,
      sizeof(itv->udma.SGarray), PCI_DMA_TODEVICE);
  ivtv_udma_sync_for_cpu(itv);
 }
}

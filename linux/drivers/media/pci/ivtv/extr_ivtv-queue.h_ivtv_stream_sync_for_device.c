
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ivtv_stream {int sg_handle; TYPE_1__* itv; } ;
struct ivtv_sg_element {int dummy; } ;
struct TYPE_2__ {int pdev; } ;


 int PCI_DMA_TODEVICE ;
 scalar_t__ ivtv_use_dma (struct ivtv_stream*) ;
 int pci_dma_sync_single_for_device (int ,int ,int,int ) ;

__attribute__((used)) static inline void ivtv_stream_sync_for_device(struct ivtv_stream *s)
{
 if (ivtv_use_dma(s))
  pci_dma_sync_single_for_device(s->itv->pdev, s->sg_handle,
   sizeof(struct ivtv_sg_element), PCI_DMA_TODEVICE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx23885_audio_dev {TYPE_1__* pci; struct cx23885_audio_buffer* buf; } ;
struct cx23885_audio_buffer {scalar_t__ sglen; int sglist; } ;
struct TYPE_2__ {int dev; } ;


 int PCI_DMA_FROMDEVICE ;
 int dma_unmap_sg (int *,int ,scalar_t__,int ) ;

__attribute__((used)) static int cx23885_alsa_dma_unmap(struct cx23885_audio_dev *dev)
{
 struct cx23885_audio_buffer *buf = dev->buf;

 if (!buf->sglen)
  return 0;

 dma_unmap_sg(&dev->pci->dev, buf->sglist, buf->sglen, PCI_DMA_FROMDEVICE);
 buf->sglen = 0;
 return 0;
}

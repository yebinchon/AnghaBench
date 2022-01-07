
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_dmasound {scalar_t__ sglen; int sglist; } ;
struct saa7134_dev {TYPE_1__* pci; struct saa7134_dmasound dmasound; } ;
struct TYPE_2__ {int dev; } ;


 int PCI_DMA_FROMDEVICE ;
 int dma_unmap_sg (int *,int ,scalar_t__,int ) ;

__attribute__((used)) static int saa7134_alsa_dma_unmap(struct saa7134_dev *dev)
{
 struct saa7134_dmasound *dma = &dev->dmasound;

 if (!dma->sglen)
  return 0;

 dma_unmap_sg(&dev->pci->dev, dma->sglist, dma->sglen, PCI_DMA_FROMDEVICE);
 dma->sglen = 0;
 return 0;
}

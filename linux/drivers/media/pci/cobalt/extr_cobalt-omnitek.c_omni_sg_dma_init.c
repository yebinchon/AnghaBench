
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cobalt {int dma_channels; int pci_32_bit; scalar_t__ first_fifo_channel; } ;


 int ABORT ;
 int CAPABILITY_REGISTER ;
 int CS_REG (int) ;
 int DMA_TYPE_FIFO ;
 int DONE ;
 int PCI_64BIT ;
 int ioread32 (int ) ;
 int iowrite32 (int ,int ) ;
 int show_dma_capability (struct cobalt*) ;

int omni_sg_dma_init(struct cobalt *cobalt)
{
 u32 capa = ioread32(CAPABILITY_REGISTER);
 int i;

 cobalt->first_fifo_channel = 0;
 cobalt->dma_channels = capa & 0xf;
 if (capa & PCI_64BIT)
  cobalt->pci_32_bit = 0;
 else
  cobalt->pci_32_bit = 1;

 for (i = 0; i < cobalt->dma_channels; i++) {
  u32 status = ioread32(CS_REG(i));
  u32 ctrl = ioread32(CS_REG(i));

  if (!(ctrl & DONE))
   iowrite32(ABORT, CS_REG(i));

  if (!(status & DMA_TYPE_FIFO))
   cobalt->first_fifo_channel++;
 }
 show_dma_capability(cobalt);
 return 0;
}

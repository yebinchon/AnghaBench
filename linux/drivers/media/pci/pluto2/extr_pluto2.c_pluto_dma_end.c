
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pluto {int* dma_buf; int dma_addr; TYPE_1__* pdev; int demux; } ;
struct TYPE_3__ {int dev; } ;


 int KERN_DEBUG ;
 int PCI_DMA_FROMDEVICE ;
 int TS_DMA_BYTES ;
 unsigned int TS_DMA_PACKETS ;
 int dev_printk (int ,int *,char*) ;
 int dvb_dmx_swfilter_packets (int *,int*,unsigned int) ;
 int memset (int*,int ,unsigned int) ;
 int pci_dma_sync_single_for_cpu (TYPE_1__*,int ,int ,int ) ;
 int pci_dma_sync_single_for_device (TYPE_1__*,int ,int ,int ) ;
 int pluto_reset_ts (struct pluto*,int) ;
 int pluto_set_dma_addr (struct pluto*) ;

__attribute__((used)) static void pluto_dma_end(struct pluto *pluto, unsigned int nbpackets)
{


 pci_dma_sync_single_for_cpu(pluto->pdev, pluto->dma_addr,
   TS_DMA_BYTES, PCI_DMA_FROMDEVICE);
 if ((nbpackets == 0) || (nbpackets > TS_DMA_PACKETS)) {
  unsigned int i = 0;
  while (pluto->dma_buf[i] == 0x47)
   i += 188;
  nbpackets = i / 188;
  if (i == 0) {
   pluto_reset_ts(pluto, 1);
   dev_printk(KERN_DEBUG, &pluto->pdev->dev, "resetting TS because of invalid packet counter\n");
  }
 }

 dvb_dmx_swfilter_packets(&pluto->demux, pluto->dma_buf, nbpackets);



 memset(pluto->dma_buf, 0, nbpackets * 188);


 pluto_set_dma_addr(pluto);


 pci_dma_sync_single_for_device(pluto->pdev, pluto->dma_addr,
   TS_DMA_BYTES, PCI_DMA_FROMDEVICE);
}

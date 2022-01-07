
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct dvb_demux {int dummy; } ;
struct TYPE_3__ {int nents; int slist; } ;
struct av7110 {int ttbp; TYPE_2__* dev; TYPE_1__ pt; int feeding1; struct dvb_demux demux1; struct dvb_demux demux; scalar_t__ full_ts; scalar_t__ grabbing; } ;
struct TYPE_4__ {int pci; } ;


 int EC1R ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_VDP3 ;
 int TS_BUFLEN ;
 int dvb_dmx_swfilter_packets (struct dvb_demux*,int *,int) ;
 int pci_dma_sync_sg_for_cpu (int ,int ,int ,int ) ;
 int printk (char*,int ,int) ;
 int saa7146_read (TYPE_2__*,int ) ;

__attribute__((used)) static void vpeirq(unsigned long cookie)
{
 struct av7110 *budget = (struct av7110 *)cookie;
 u8 *mem = (u8 *) (budget->grabbing);
 u32 olddma = budget->ttbp;
 u32 newdma = saa7146_read(budget->dev, PCI_VDP3);
 struct dvb_demux *demux = budget->full_ts ? &budget->demux : &budget->demux1;


 newdma -= newdma % 188;

 if (newdma >= TS_BUFLEN)
  return;

 budget->ttbp = newdma;

 if (!budget->feeding1 || (newdma == olddma))
  return;


 pci_dma_sync_sg_for_cpu(budget->dev->pci, budget->pt.slist, budget->pt.nents, PCI_DMA_FROMDEVICE);
 if (newdma > olddma)

  dvb_dmx_swfilter_packets(demux, mem + olddma, (newdma - olddma) / 188);
 else {

  dvb_dmx_swfilter_packets(demux, mem + olddma, (TS_BUFLEN - olddma) / 188);
  dvb_dmx_swfilter_packets(demux, mem, newdma / 188);
 }
}

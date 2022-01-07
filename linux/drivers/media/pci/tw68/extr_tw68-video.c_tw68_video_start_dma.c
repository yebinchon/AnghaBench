
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tw68_dev {int pci_irqmask; int board_virqmask; TYPE_1__* fmt; int field; int height; int width; } ;
struct tw68_buf {int dma; } ;
struct TYPE_2__ {int twformat; } ;


 int ColorFormatGamma ;
 int TW68_DMAC ;
 int TW68_DMAP_EN ;
 int TW68_DMAP_SA ;
 int TW68_FIFO_EN ;
 int TW68_INTMASK ;
 int TW68_INTSTAT ;
 int tw68_set_scale (struct tw68_dev*,int ,int ,int ) ;
 int tw_andorl (int ,int,int) ;
 int tw_clearl (int ,int) ;
 int tw_setl (int ,int ) ;
 int tw_writel (int ,int ) ;

int tw68_video_start_dma(struct tw68_dev *dev, struct tw68_buf *buf)
{

 tw68_set_scale(dev, dev->width, dev->height, dev->field);





 tw_clearl(TW68_DMAC, TW68_DMAP_EN);
 tw_writel(TW68_DMAP_SA, buf->dma);

 tw_writel(TW68_INTSTAT, dev->board_virqmask);

 tw_andorl(TW68_DMAC, 0xff, dev->fmt->twformat |
  ColorFormatGamma | TW68_DMAP_EN | TW68_FIFO_EN);
 dev->pci_irqmask |= dev->board_virqmask;
 tw_setl(TW68_INTMASK, dev->pci_irqmask);
 return 0;
}

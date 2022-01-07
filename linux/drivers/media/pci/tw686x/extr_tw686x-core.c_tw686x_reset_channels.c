
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct tw686x_dev {unsigned int pending_dma_en; unsigned int pending_dma_cmd; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_CHANNEL_ENABLE ;
 int DMA_CMD ;
 unsigned int DMA_CMD_ENABLE ;
 int dev_dbg (int *,char*) ;
 unsigned int reg_read (struct tw686x_dev*,int ) ;
 int reg_write (struct tw686x_dev*,int ,unsigned int) ;

__attribute__((used)) static void tw686x_reset_channels(struct tw686x_dev *dev, unsigned int ch_mask)
{
 u32 dma_en, dma_cmd;

 dma_en = reg_read(dev, DMA_CHANNEL_ENABLE);
 dma_cmd = reg_read(dev, DMA_CMD);





 dev->pending_dma_en |= dma_en;
 dev->pending_dma_cmd |= dma_cmd;


 reg_write(dev, DMA_CHANNEL_ENABLE, dma_en & ~ch_mask);

 if ((dma_en & ~ch_mask) == 0) {
  dev_dbg(&dev->pci_dev->dev, "reset: stopping DMA\n");
  dma_cmd &= ~DMA_CMD_ENABLE;
 }
 reg_write(dev, DMA_CMD, dma_cmd & ~ch_mask);
}

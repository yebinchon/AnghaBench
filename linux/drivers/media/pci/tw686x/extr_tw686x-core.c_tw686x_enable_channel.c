
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tw686x_dev {int pending_dma_en; int pending_dma_cmd; } ;


 int BIT (unsigned int) ;
 int DMA_CHANNEL_ENABLE ;
 int DMA_CMD ;
 int DMA_CMD_ENABLE ;
 int reg_read (struct tw686x_dev*,int ) ;

void tw686x_enable_channel(struct tw686x_dev *dev, unsigned int channel)
{
 u32 dma_en = reg_read(dev, DMA_CHANNEL_ENABLE);
 u32 dma_cmd = reg_read(dev, DMA_CMD);

 dev->pending_dma_en |= dma_en | BIT(channel);
 dev->pending_dma_cmd |= dma_cmd | DMA_CMD_ENABLE | BIT(channel);
}

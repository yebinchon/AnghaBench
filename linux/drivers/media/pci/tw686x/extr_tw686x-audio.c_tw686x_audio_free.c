
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tw686x_dev {int * snd_card; int lock; } ;


 int DMA_CHANNEL_ENABLE ;
 int DMA_CMD ;
 int reg_read (struct tw686x_dev*,int ) ;
 int reg_write (struct tw686x_dev*,int ,int) ;
 int snd_card_free (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void tw686x_audio_free(struct tw686x_dev *dev)
{
 unsigned long flags;
 u32 dma_ch_mask;
 u32 dma_cmd;

 spin_lock_irqsave(&dev->lock, flags);
 dma_cmd = reg_read(dev, DMA_CMD);
 dma_ch_mask = reg_read(dev, DMA_CHANNEL_ENABLE);
 reg_write(dev, DMA_CMD, dma_cmd & ~0xff00);
 reg_write(dev, DMA_CHANNEL_ENABLE, dma_ch_mask & ~0xff00);
 spin_unlock_irqrestore(&dev->lock, flags);

 if (!dev->snd_card)
  return;
 snd_card_free(dev->snd_card);
 dev->snd_card = ((void*)0);
}

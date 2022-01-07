
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw686x_dev {int lock; scalar_t__ pending_dma_cmd; scalar_t__ pending_dma_en; } ;
struct timer_list {int dummy; } ;


 int DMA_CHANNEL_ENABLE ;
 int DMA_CMD ;
 struct tw686x_dev* dev ;
 int dma_delay_timer ;
 struct tw686x_dev* from_timer (int ,struct timer_list*,int ) ;
 int reg_write (struct tw686x_dev*,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void tw686x_dma_delay(struct timer_list *t)
{
 struct tw686x_dev *dev = from_timer(dev, t, dma_delay_timer);
 unsigned long flags;

 spin_lock_irqsave(&dev->lock, flags);

 reg_write(dev, DMA_CHANNEL_ENABLE, dev->pending_dma_en);
 reg_write(dev, DMA_CMD, dev->pending_dma_cmd);
 dev->pending_dma_en = 0;
 dev->pending_dma_cmd = 0;

 spin_unlock_irqrestore(&dev->lock, flags);
}

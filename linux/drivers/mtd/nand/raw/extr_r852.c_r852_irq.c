
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct r852_device {int card_detected; int card_unstable; int dma_stage; scalar_t__ dma_state; int irqlock; int dma_done; int card_detect_work; int card_workqueue; } ;
typedef int irqreturn_t ;


 scalar_t__ DMA_INTERNAL ;
 scalar_t__ DMA_MEMORY ;
 int EIO ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int R852_CARD_IRQ_INSERT ;
 int R852_CARD_IRQ_REMOVE ;
 int R852_CARD_IRQ_STA ;
 int R852_CARD_STA_CD ;
 int R852_DMA_IRQ_ERROR ;
 int R852_DMA_IRQ_INTERNAL ;
 int R852_DMA_IRQ_MASK ;
 int R852_DMA_IRQ_MEMORY ;
 int R852_DMA_IRQ_STA ;
 int WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int complete (int *) ;
 int dbg (char*,...) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int r852_disable_irqs (struct r852_device*) ;
 int r852_dma_done (struct r852_device*,int ) ;
 int r852_dma_enable (struct r852_device*) ;
 int r852_read_reg (struct r852_device*,int ) ;
 int r852_read_reg_dword (struct r852_device*,int ) ;
 int r852_write_reg (struct r852_device*,int ,int) ;
 int r852_write_reg_dword (struct r852_device*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t r852_irq(int irq, void *data)
{
 struct r852_device *dev = (struct r852_device *)data;

 uint8_t card_status, dma_status;
 unsigned long flags;
 irqreturn_t ret = IRQ_NONE;

 spin_lock_irqsave(&dev->irqlock, flags);


 card_status = r852_read_reg(dev, R852_CARD_IRQ_STA);
 r852_write_reg(dev, R852_CARD_IRQ_STA, card_status);

 if (card_status & (R852_CARD_IRQ_INSERT|R852_CARD_IRQ_REMOVE)) {

  ret = IRQ_HANDLED;
  dev->card_detected = !!(card_status & R852_CARD_IRQ_INSERT);



  WARN_ON(dev->card_unstable);



  r852_disable_irqs(dev);

  if (dev->card_unstable)
   goto out;


  dev->card_unstable = 1;
  queue_delayed_work(dev->card_workqueue,
   &dev->card_detect_work, msecs_to_jiffies(100));
  goto out;
 }



 dma_status = r852_read_reg_dword(dev, R852_DMA_IRQ_STA);
 r852_write_reg_dword(dev, R852_DMA_IRQ_STA, dma_status);

 if (dma_status & R852_DMA_IRQ_MASK) {

  ret = IRQ_HANDLED;

  if (dma_status & R852_DMA_IRQ_ERROR) {
   dbg("received dma error IRQ");
   r852_dma_done(dev, -EIO);
   complete(&dev->dma_done);
   goto out;
  }


  WARN_ON_ONCE(dev->dma_stage == 0);

  if (dev->dma_stage == 0)
   goto out;


  if (dev->dma_state == DMA_INTERNAL &&
    (dma_status & R852_DMA_IRQ_INTERNAL)) {

   dev->dma_state = DMA_MEMORY;
   dev->dma_stage++;
  }


  if (dev->dma_state == DMA_MEMORY &&
    (dma_status & R852_DMA_IRQ_MEMORY)) {
   dev->dma_state = DMA_INTERNAL;
   dev->dma_stage++;
  }


  if (dev->dma_stage == 2)
   r852_dma_enable(dev);


  if (dev->dma_stage == 3) {
   r852_dma_done(dev, 0);
   complete(&dev->dma_done);
  }
  goto out;
 }


 if (dma_status)
  dbg("bad dma IRQ status = %x", dma_status);

 if (card_status & ~R852_CARD_STA_CD)
  dbg("strange card status = %x", card_status);

out:
 spin_unlock_irqrestore(&dev->irqlock, flags);
 return ret;
}

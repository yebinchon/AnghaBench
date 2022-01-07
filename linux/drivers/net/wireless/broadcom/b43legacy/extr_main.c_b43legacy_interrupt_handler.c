
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct b43legacy_wldev {int irq_mask; int* dma_reason; int irq_reason; TYPE_1__* wl; int isr_tasklet; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int irq_lock; } ;


 int B43legacy_MMIO_DMA0_REASON ;
 int B43legacy_MMIO_DMA1_REASON ;
 int B43legacy_MMIO_DMA2_REASON ;
 int B43legacy_MMIO_DMA3_REASON ;
 int B43legacy_MMIO_DMA4_REASON ;
 int B43legacy_MMIO_DMA5_REASON ;
 int B43legacy_MMIO_GEN_IRQ_MASK ;
 int B43legacy_MMIO_GEN_IRQ_REASON ;
 scalar_t__ B43legacy_STAT_STARTED ;
 int B43legacy_WARN_ON (int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int b43legacy_interrupt_ack (struct b43legacy_wldev*,int) ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 scalar_t__ b43legacy_status (struct b43legacy_wldev*) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t b43legacy_interrupt_handler(int irq, void *dev_id)
{
 irqreturn_t ret = IRQ_NONE;
 struct b43legacy_wldev *dev = dev_id;
 u32 reason;

 B43legacy_WARN_ON(!dev);

 spin_lock(&dev->wl->irq_lock);

 if (unlikely(b43legacy_status(dev) < B43legacy_STAT_STARTED))

  goto out;
 reason = b43legacy_read32(dev, B43legacy_MMIO_GEN_IRQ_REASON);
 if (reason == 0xffffffff)
  goto out;
 ret = IRQ_HANDLED;
 reason &= dev->irq_mask;
 if (!reason)
  goto out;

 dev->dma_reason[0] = b43legacy_read32(dev,
           B43legacy_MMIO_DMA0_REASON)
           & 0x0001DC00;
 dev->dma_reason[1] = b43legacy_read32(dev,
           B43legacy_MMIO_DMA1_REASON)
           & 0x0000DC00;
 dev->dma_reason[2] = b43legacy_read32(dev,
           B43legacy_MMIO_DMA2_REASON)
           & 0x0000DC00;
 dev->dma_reason[3] = b43legacy_read32(dev,
           B43legacy_MMIO_DMA3_REASON)
           & 0x0001DC00;
 dev->dma_reason[4] = b43legacy_read32(dev,
           B43legacy_MMIO_DMA4_REASON)
           & 0x0000DC00;
 dev->dma_reason[5] = b43legacy_read32(dev,
           B43legacy_MMIO_DMA5_REASON)
           & 0x0000DC00;

 b43legacy_interrupt_ack(dev, reason);

 b43legacy_write32(dev, B43legacy_MMIO_GEN_IRQ_MASK, 0);

 dev->irq_reason = reason;
 tasklet_schedule(&dev->isr_tasklet);
out:
 spin_unlock(&dev->wl->irq_lock);

 return ret;
}

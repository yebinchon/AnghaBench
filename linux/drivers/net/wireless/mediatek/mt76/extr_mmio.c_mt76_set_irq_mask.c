
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int irq_lock; int irqmask; } ;
struct mt76_dev {TYPE_1__ mmio; } ;


 int mt76_mmio_wr (struct mt76_dev*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mt76_set_irq_mask(struct mt76_dev *dev, u32 addr,
         u32 clear, u32 set)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->mmio.irq_lock, flags);
 dev->mmio.irqmask &= ~clear;
 dev->mmio.irqmask |= set;
 mt76_mmio_wr(dev, addr, dev->mmio.irqmask);
 spin_unlock_irqrestore(&dev->mmio.irq_lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw5864_dev {int slock; scalar_t__ irqmask; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tw5864_irqmask_apply (struct tw5864_dev*) ;

__attribute__((used)) static void tw5864_interrupts_disable(struct tw5864_dev *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->slock, flags);
 dev->irqmask = 0;
 tw5864_irqmask_apply(dev);
 spin_unlock_irqrestore(&dev->slock, flags);
}

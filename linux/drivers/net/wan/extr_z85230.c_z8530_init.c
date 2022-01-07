
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * lock; } ;
struct TYPE_3__ {int * lock; } ;
struct z8530_dev {int lock; TYPE_2__ chanB; TYPE_1__ chanA; } ;


 int do_z8530_init (struct z8530_dev*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int z8530_init(struct z8530_dev *dev)
{
 unsigned long flags;
 int ret;


 spin_lock_init(&dev->lock);
 dev->chanA.lock = &dev->lock;
 dev->chanB.lock = &dev->lock;

 spin_lock_irqsave(&dev->lock, flags);
 ret = do_z8530_init(dev);
 spin_unlock_irqrestore(&dev->lock, flags);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rc_dev {struct ite_dev* priv; } ;
struct TYPE_2__ {int tx_carrier_freq; } ;
struct ite_dev {int lock; TYPE_1__ params; } ;


 int ite_set_carrier_params (struct ite_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ite_set_tx_carrier(struct rc_dev *rcdev, u32 carrier)
{
 unsigned long flags;
 struct ite_dev *dev = rcdev->priv;

 spin_lock_irqsave(&dev->lock, flags);
 dev->params.tx_carrier_freq = carrier;
 ite_set_carrier_params(dev);
 spin_unlock_irqrestore(&dev->lock, flags);

 return 0;
}

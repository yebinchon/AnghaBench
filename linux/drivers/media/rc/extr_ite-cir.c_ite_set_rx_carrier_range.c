
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct rc_dev {struct ite_dev* priv; } ;
struct TYPE_2__ {void* rx_high_carrier_freq; void* rx_low_carrier_freq; } ;
struct ite_dev {int lock; TYPE_1__ params; } ;


 int ite_set_carrier_params (struct ite_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ite_set_rx_carrier_range(struct rc_dev *rcdev, u32 carrier_low, u32
        carrier_high)
{
 unsigned long flags;
 struct ite_dev *dev = rcdev->priv;

 spin_lock_irqsave(&dev->lock, flags);
 dev->params.rx_low_carrier_freq = carrier_low;
 dev->params.rx_high_carrier_freq = carrier_high;
 ite_set_carrier_params(dev);
 spin_unlock_irqrestore(&dev->lock, flags);

 return 0;
}

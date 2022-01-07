
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct ene_device* priv; } ;
struct ene_device {int hw_lock; } ;


 int ene_rx_disable (struct ene_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ene_close(struct rc_dev *rdev)
{
 struct ene_device *dev = rdev->priv;
 unsigned long flags;
 spin_lock_irqsave(&dev->hw_lock, flags);

 ene_rx_disable(dev);
 spin_unlock_irqrestore(&dev->hw_lock, flags);
}

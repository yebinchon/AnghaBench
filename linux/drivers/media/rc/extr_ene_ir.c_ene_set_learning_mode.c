
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct ene_device* priv; } ;
struct ene_device {int learning_mode_enabled; int hw_lock; } ;


 int ene_rx_disable (struct ene_device*) ;
 int ene_rx_enable (struct ene_device*) ;
 int ene_rx_setup (struct ene_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ene_set_learning_mode(struct rc_dev *rdev, int enable)
{
 struct ene_device *dev = rdev->priv;
 unsigned long flags;
 if (enable == dev->learning_mode_enabled)
  return 0;

 spin_lock_irqsave(&dev->hw_lock, flags);
 dev->learning_mode_enabled = enable;
 ene_rx_disable(dev);
 ene_rx_setup(dev);
 ene_rx_enable(dev);
 spin_unlock_irqrestore(&dev->hw_lock, flags);
 return 0;
}

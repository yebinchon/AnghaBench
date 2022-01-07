
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;
struct ene_device {int rdev; int hw_io; int irq; int hw_lock; } ;


 int ENE_IO_SIZE ;
 int ene_rx_disable (struct ene_device*) ;
 int ene_rx_restore_hw_buffer (struct ene_device*) ;
 int free_irq (int ,struct ene_device*) ;
 int kfree (struct ene_device*) ;
 struct ene_device* pnp_get_drvdata (struct pnp_dev*) ;
 int rc_unregister_device (int ) ;
 int release_region (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ene_remove(struct pnp_dev *pnp_dev)
{
 struct ene_device *dev = pnp_get_drvdata(pnp_dev);
 unsigned long flags;

 spin_lock_irqsave(&dev->hw_lock, flags);
 ene_rx_disable(dev);
 ene_rx_restore_hw_buffer(dev);
 spin_unlock_irqrestore(&dev->hw_lock, flags);

 free_irq(dev->irq, dev);
 release_region(dev->hw_io, ENE_IO_SIZE);
 rc_unregister_device(dev->rdev);
 kfree(dev);
}

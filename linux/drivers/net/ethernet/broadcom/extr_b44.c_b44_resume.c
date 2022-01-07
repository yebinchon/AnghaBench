
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {int dev; int bus; } ;
struct net_device {int name; int irq; } ;
struct b44 {int timer; int dev; int lock; } ;


 int B44_FULL_RESET ;
 int IRQF_SHARED ;
 int b44_enable_ints (struct b44*) ;
 int b44_free_rings (struct b44*) ;
 int b44_halt (struct b44*) ;
 int b44_init_hw (struct b44*,int ) ;
 int b44_init_rings (struct b44*) ;
 int b44_interrupt ;
 int dev_err (int ,char*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netdev_err (struct net_device*,char*) ;
 struct b44* netdev_priv (struct net_device*) ;
 int netif_device_attach (int ) ;
 int netif_running (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int ssb_bus_powerup (int ,int ) ;
 struct net_device* ssb_get_drvdata (struct ssb_device*) ;

__attribute__((used)) static int b44_resume(struct ssb_device *sdev)
{
 struct net_device *dev = ssb_get_drvdata(sdev);
 struct b44 *bp = netdev_priv(dev);
 int rc = 0;

 rc = ssb_bus_powerup(sdev->bus, 0);
 if (rc) {
  dev_err(sdev->dev,
   "Failed to powerup the bus\n");
  return rc;
 }

 if (!netif_running(dev))
  return 0;

 spin_lock_irq(&bp->lock);
 b44_init_rings(bp);
 b44_init_hw(bp, B44_FULL_RESET);
 spin_unlock_irq(&bp->lock);






 rc = request_irq(dev->irq, b44_interrupt, IRQF_SHARED, dev->name, dev);
 if (rc) {
  netdev_err(dev, "request_irq failed\n");
  spin_lock_irq(&bp->lock);
  b44_halt(bp);
  b44_free_rings(bp);
  spin_unlock_irq(&bp->lock);
  return rc;
 }

 netif_device_attach(bp->dev);

 b44_enable_ints(bp);
 netif_wake_queue(dev);

 mod_timer(&bp->timer, jiffies + 1);

 return 0;
}

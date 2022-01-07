
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {int dummy; } ;
struct net_device {int irq; } ;
struct b44 {int flags; int lock; int dev; int timer; } ;
typedef int pm_message_t ;


 int B44_FLAG_WOL_ENABLE ;
 int B44_PARTIAL_RESET ;
 int PCI_D3hot ;
 int b44_free_rings (struct b44*) ;
 int b44_halt (struct b44*) ;
 int b44_init_hw (struct b44*,int ) ;
 int b44_setup_wol (struct b44*) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 struct b44* netdev_priv (struct net_device*) ;
 int netif_carrier_off (int ) ;
 int netif_device_detach (int ) ;
 int netif_running (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct net_device* ssb_get_drvdata (struct ssb_device*) ;
 int ssb_pcihost_set_power_state (struct ssb_device*,int ) ;

__attribute__((used)) static int b44_suspend(struct ssb_device *sdev, pm_message_t state)
{
 struct net_device *dev = ssb_get_drvdata(sdev);
 struct b44 *bp = netdev_priv(dev);

 if (!netif_running(dev))
  return 0;

 del_timer_sync(&bp->timer);

 spin_lock_irq(&bp->lock);

 b44_halt(bp);
 netif_carrier_off(bp->dev);
 netif_device_detach(bp->dev);
 b44_free_rings(bp);

 spin_unlock_irq(&bp->lock);

 free_irq(dev->irq, dev);
 if (bp->flags & B44_FLAG_WOL_ENABLE) {
  b44_init_hw(bp, B44_PARTIAL_RESET);
  b44_setup_wol(bp);
 }

 ssb_pcihost_set_power_state(sdev, PCI_D3hot);
 return 0;
}

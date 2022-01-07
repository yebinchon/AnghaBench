
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct de_private {int lock; int media_timer; int tx_tail; int tx_head; int rx_tail; TYPE_1__* pdev; } ;
struct TYPE_2__ {int irq; } ;


 int MacMode ;
 int MacStatus ;
 int SIAStatus ;
 int __de_get_stats (struct de_private*) ;
 int de_clean_rings (struct de_private*) ;
 int de_init_hw (struct de_private*) ;
 int de_init_rings (struct de_private*) ;
 int de_stop_hw (struct de_private*) ;
 int del_timer_sync (int *) ;
 int disable_irq (int const) ;
 int dr32 (int ) ;
 int enable_irq (int const) ;
 int netdev_dbg (struct net_device*,char*,int ,int ,int ,int ,int ,int ) ;
 struct de_private* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int synchronize_irq (int const) ;

__attribute__((used)) static void de_tx_timeout (struct net_device *dev)
{
 struct de_private *de = netdev_priv(dev);
 const int irq = de->pdev->irq;

 netdev_dbg(dev, "NIC status %08x mode %08x sia %08x desc %u/%u/%u\n",
     dr32(MacStatus), dr32(MacMode), dr32(SIAStatus),
     de->rx_tail, de->tx_head, de->tx_tail);

 del_timer_sync(&de->media_timer);

 disable_irq(irq);
 spin_lock_irq(&de->lock);

 de_stop_hw(de);
 netif_stop_queue(dev);
 netif_carrier_off(dev);

 spin_unlock_irq(&de->lock);
 enable_irq(irq);


 __de_get_stats(de);

 synchronize_irq(irq);
 de_clean_rings(de);

 de_init_rings(de);

 de_init_hw(de);

 netif_wake_queue(dev);
}

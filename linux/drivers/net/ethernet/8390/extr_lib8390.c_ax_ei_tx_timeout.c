
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_packets; int tx_errors; } ;
struct net_device {unsigned long base_addr; int irq; TYPE_1__ stats; } ;
struct ei_device {int interface_num; int page_lock; } ;


 scalar_t__ EN0_ISR ;
 scalar_t__ EN0_TSR ;
 int ENTSR_ABT ;
 int __NS8390_init (struct net_device*,int) ;
 int dev_trans_start (struct net_device*) ;
 int disable_irq_nosync_lockdep (int ) ;
 int ei_inb (scalar_t__) ;
 int ei_reset_8390 (struct net_device*) ;
 int enable_irq_lockdep (int ) ;
 int jiffies ;
 int netdev_dbg (struct net_device*,char*,char*,int,int,int) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __ei_tx_timeout(struct net_device *dev)
{
 unsigned long e8390_base = dev->base_addr;
 struct ei_device *ei_local = netdev_priv(dev);
 int txsr, isr, tickssofar = jiffies - dev_trans_start(dev);
 unsigned long flags;

 dev->stats.tx_errors++;

 spin_lock_irqsave(&ei_local->page_lock, flags);
 txsr = ei_inb(e8390_base+EN0_TSR);
 isr = ei_inb(e8390_base+EN0_ISR);
 spin_unlock_irqrestore(&ei_local->page_lock, flags);

 netdev_dbg(dev, "Tx timed out, %s TSR=%#2x, ISR=%#2x, t=%d\n",
     (txsr & ENTSR_ABT) ? "excess collisions." :
     (isr) ? "lost interrupt?" : "cable problem?",
     txsr, isr, tickssofar);

 if (!isr && !dev->stats.tx_packets) {

  ei_local->interface_num ^= 1;
 }



 disable_irq_nosync_lockdep(dev->irq);
 spin_lock(&ei_local->page_lock);


 ei_reset_8390(dev);
 __NS8390_init(dev, 1);

 spin_unlock(&ei_local->page_lock);
 enable_irq_lockdep(dev->irq);
 netif_wake_queue(dev);
}

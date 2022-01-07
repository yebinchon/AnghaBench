
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct net_device {int name; int irq; int base_addr; } ;
struct TYPE_2__ {scalar_t__ lock; int queue; } ;
struct de4x5_private {int irq_mask; int lock; scalar_t__ interrupt; TYPE_1__ cache; scalar_t__ tx_enable; } ;
typedef int s32 ;
typedef int irqreturn_t ;


 int DE4X5_STS ;
 int DISABLE_IRQs ;
 int ENABLE_IRQs ;
 int IMR_LFM ;
 int IRQ_HANDLED ;
 int IRQ_RETVAL (unsigned int) ;
 int MASK_INTERRUPTS ;
 int STOP_DE4X5 ;
 int STS_LNF ;
 int STS_RI ;
 int STS_RU ;
 int STS_SE ;
 int STS_TI ;
 int STS_TU ;
 int STS_UNF ;
 scalar_t__ UNMASK_INTERRUPTS ;
 int de4x5_get_cache (struct net_device*) ;
 int de4x5_queue_pkt (int ,struct net_device*) ;
 int de4x5_rx (struct net_device*) ;
 int de4x5_tx (struct net_device*) ;
 int de4x5_txur (struct net_device*) ;
 int inl (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int netif_queue_stopped (struct net_device*) ;
 int outl (int,int ) ;
 int printk (char*,int ,...) ;
 int skb_queue_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_irq (int ) ;
 scalar_t__ test_and_set_bit (int ,void*) ;

__attribute__((used)) static irqreturn_t
de4x5_interrupt(int irq, void *dev_id)
{
    struct net_device *dev = dev_id;
    struct de4x5_private *lp;
    s32 imr, omr, sts, limit;
    u_long iobase;
    unsigned int handled = 0;

    lp = netdev_priv(dev);
    spin_lock(&lp->lock);
    iobase = dev->base_addr;

    DISABLE_IRQs;

    if (test_and_set_bit(MASK_INTERRUPTS, (void*) &lp->interrupt))
 printk("%s: Re-entering the interrupt handler.\n", dev->name);

    synchronize_irq(dev->irq);

    for (limit=0; limit<8; limit++) {
 sts = inl(DE4X5_STS);
 outl(sts, DE4X5_STS);

 if (!(sts & lp->irq_mask)) break;
 handled = 1;

 if (sts & (STS_RI | STS_RU))
   de4x5_rx(dev);

 if (sts & (STS_TI | STS_TU))
   de4x5_tx(dev);

 if (sts & STS_LNF) {
     lp->irq_mask &= ~IMR_LFM;
 }

 if (sts & STS_UNF) {
     de4x5_txur(dev);
 }

 if (sts & STS_SE) {
     STOP_DE4X5;
     printk("%s: Fatal bus error occurred, sts=%#8x, device stopped.\n",
     dev->name, sts);
     spin_unlock(&lp->lock);
     return IRQ_HANDLED;
 }
    }


    if (!test_and_set_bit(0, (void *)&lp->cache.lock)) {
 while (!skb_queue_empty(&lp->cache.queue) && !netif_queue_stopped(dev) && lp->tx_enable) {
     de4x5_queue_pkt(de4x5_get_cache(dev), dev);
 }
 lp->cache.lock = 0;
    }

    lp->interrupt = UNMASK_INTERRUPTS;
    ENABLE_IRQs;
    spin_unlock(&lp->lock);

    return IRQ_RETVAL(handled);
}

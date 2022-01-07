
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcnet32_private {int lock; TYPE_2__* a; int napi; int watchdog_timer; } ;
struct TYPE_3__ {int rx_missed_errors; } ;
struct net_device {unsigned long base_addr; int irq; TYPE_1__ stats; } ;
struct TYPE_4__ {int (* write_bcr ) (unsigned long,int,int) ;int (* write_csr ) (unsigned long,int,int ) ;int (* read_csr ) (unsigned long,int) ;} ;


 int CSR0 ;
 int CSR0_STOP ;
 int KERN_DEBUG ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 int ifdown ;
 int napi_disable (int *) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int netif_printk (struct pcnet32_private*,int ,int ,struct net_device*,char*,int ) ;
 int netif_stop_queue (struct net_device*) ;
 int pcnet32_purge_rx_ring (struct net_device*) ;
 int pcnet32_purge_tx_ring (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (unsigned long,int) ;
 int stub2 (unsigned long,int) ;
 int stub3 (unsigned long,int,int ) ;
 int stub4 (unsigned long,int,int) ;

__attribute__((used)) static int pcnet32_close(struct net_device *dev)
{
 unsigned long ioaddr = dev->base_addr;
 struct pcnet32_private *lp = netdev_priv(dev);
 unsigned long flags;

 del_timer_sync(&lp->watchdog_timer);

 netif_stop_queue(dev);
 napi_disable(&lp->napi);

 spin_lock_irqsave(&lp->lock, flags);

 dev->stats.rx_missed_errors = lp->a->read_csr(ioaddr, 112);

 netif_printk(lp, ifdown, KERN_DEBUG, dev,
       "Shutting down ethercard, status was %2.2x\n",
       lp->a->read_csr(ioaddr, CSR0));


 lp->a->write_csr(ioaddr, CSR0, CSR0_STOP);





 lp->a->write_bcr(ioaddr, 20, 4);

 spin_unlock_irqrestore(&lp->lock, flags);

 free_irq(dev->irq, dev);

 spin_lock_irqsave(&lp->lock, flags);

 pcnet32_purge_rx_ring(dev);
 pcnet32_purge_tx_ring(dev);

 spin_unlock_irqrestore(&lp->lock, flags);

 return 0;
}

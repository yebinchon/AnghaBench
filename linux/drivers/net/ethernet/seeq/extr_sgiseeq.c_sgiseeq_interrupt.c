
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgiseeq_regs {int dummy; } ;
struct sgiseeq_private {scalar_t__ tx_old; scalar_t__ tx_new; int tx_lock; struct sgiseeq_regs* sregs; struct hpc3_ethregs* hregs; } ;
struct net_device {int dummy; } ;
struct hpc3_ethregs {int reset; } ;
typedef int irqreturn_t ;


 int HPC3_ERST_CLRIRQ ;
 int IRQ_HANDLED ;
 scalar_t__ TX_BUFFS_AVAIL (struct sgiseeq_private*) ;
 struct sgiseeq_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int sgiseeq_rx (struct net_device*,struct sgiseeq_private*,struct hpc3_ethregs*,struct sgiseeq_regs*) ;
 int sgiseeq_tx (struct net_device*,struct sgiseeq_private*,struct hpc3_ethregs*,struct sgiseeq_regs*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t sgiseeq_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *) dev_id;
 struct sgiseeq_private *sp = netdev_priv(dev);
 struct hpc3_ethregs *hregs = sp->hregs;
 struct sgiseeq_regs *sregs = sp->sregs;

 spin_lock(&sp->tx_lock);


 hregs->reset = HPC3_ERST_CLRIRQ;


 sgiseeq_rx(dev, sp, hregs, sregs);


 if (sp->tx_old != sp->tx_new)
  sgiseeq_tx(dev, sp, hregs, sregs);

 if ((TX_BUFFS_AVAIL(sp) > 0) && netif_queue_stopped(dev)) {
  netif_wake_queue(dev);
 }
 spin_unlock(&sp->tx_lock);

 return IRQ_HANDLED;
}

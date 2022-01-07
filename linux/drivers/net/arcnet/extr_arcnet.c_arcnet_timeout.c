
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_errors; int tx_aborted_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_4__ {int (* status ) (struct net_device*) ;int (* intmask ) (struct net_device*,int) ;int (* command ) (struct net_device*,int) ;} ;
struct arcnet_local {int timed_out; int cur_tx; int intmask; scalar_t__ last_timeout; int lasttrans_dest; int lock; TYPE_2__ hw; } ;


 int D_EXTRA ;
 int EXCNAKflag ;
 int HZ ;
 int NOTXcmd ;
 int TXFREEflag ;
 int arc_printk (int ,struct net_device*,char*,char*,int,int,int ) ;
 scalar_t__ jiffies ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*,int) ;
 int stub3 (struct net_device*,int) ;
 int stub4 (struct net_device*,int) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

void arcnet_timeout(struct net_device *dev)
{
 unsigned long flags;
 struct arcnet_local *lp = netdev_priv(dev);
 int status = lp->hw.status(dev);
 char *msg;

 spin_lock_irqsave(&lp->lock, flags);
 if (status & TXFREEflag) {
  msg = " - missed IRQ?";
 } else {
  msg = "";
  dev->stats.tx_aborted_errors++;
  lp->timed_out = 1;
  lp->hw.command(dev, NOTXcmd | (lp->cur_tx << 3));
 }
 dev->stats.tx_errors++;


 lp->hw.intmask(dev, 0);
 lp->intmask |= TXFREEflag | EXCNAKflag;
 lp->hw.intmask(dev, lp->intmask);

 spin_unlock_irqrestore(&lp->lock, flags);

 if (time_after(jiffies, lp->last_timeout + 10 * HZ)) {
  arc_printk(D_EXTRA, dev, "tx timed out%s (status=%Xh, intmask=%Xh, dest=%02Xh)\n",
      msg, status, lp->intmask, lp->lasttrans_dest);
  lp->last_timeout = jiffies;
 }

 if (lp->cur_tx == -1)
  netif_wake_queue(dev);
}

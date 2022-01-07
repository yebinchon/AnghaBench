
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct scc_channel {int lock; int dev; int ctrl; int tx_wdog; } ;


 int FLAG ;
 int Outb (int ,int ) ;
 int R6 ;
 int R7 ;
 int RES_EXT_INT ;
 int TX_OFF ;
 int del_timer (int *) ;
 struct scc_channel* from_timer (int ,struct timer_list*,int ) ;
 int netif_wake_queue (int ) ;
 struct scc_channel* scc ;
 int scc_key_trx (struct scc_channel*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_wdog ;
 int wr (struct scc_channel*,int ,int ) ;

__attribute__((used)) static void scc_stop_calibrate(struct timer_list *t)
{
 struct scc_channel *scc = from_timer(scc, t, tx_wdog);
 unsigned long flags;

 spin_lock_irqsave(&scc->lock, flags);
 del_timer(&scc->tx_wdog);
 scc_key_trx(scc, TX_OFF);
 wr(scc, R6, 0);
 wr(scc, R7, FLAG);
 Outb(scc->ctrl,RES_EXT_INT);
 Outb(scc->ctrl,RES_EXT_INT);

 netif_wake_queue(scc->dev);
 spin_unlock_irqrestore(&scc->lock, flags);
}

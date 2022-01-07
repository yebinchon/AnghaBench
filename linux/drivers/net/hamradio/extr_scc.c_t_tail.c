
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ tx_state; } ;
struct TYPE_3__ {int mintime; } ;
struct scc_channel {int dev; TYPE_2__ stat; TYPE_1__ kiss; int lock; int tx_wdog; } ;


 scalar_t__ TXS_IDLE ;
 scalar_t__ TXS_TIMEOUT ;
 scalar_t__ TXS_WAIT ;
 int TX_OFF ;
 int del_timer (int *) ;
 struct scc_channel* from_timer (int ,struct timer_list*,int ) ;
 int netif_wake_queue (int ) ;
 struct scc_channel* scc ;
 int scc_key_trx (struct scc_channel*,int ) ;
 int scc_start_tx_timer (struct scc_channel*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int t_dwait ;
 int tx_t ;

__attribute__((used)) static void t_tail(struct timer_list *t)
{
 struct scc_channel *scc = from_timer(scc, t, tx_t);
 unsigned long flags;

 spin_lock_irqsave(&scc->lock, flags);
  del_timer(&scc->tx_wdog);
  scc_key_trx(scc, TX_OFF);
 spin_unlock_irqrestore(&scc->lock, flags);

  if (scc->stat.tx_state == TXS_TIMEOUT)
  {
   scc->stat.tx_state = TXS_WAIT;
  scc_start_tx_timer(scc, t_dwait, scc->kiss.mintime*100);
   return;
  }

  scc->stat.tx_state = TXS_IDLE;
 netif_wake_queue(scc->dev);
}

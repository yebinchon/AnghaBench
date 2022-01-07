
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {int tailtime; } ;
struct TYPE_3__ {int tx_state; int txerrs; } ;
struct scc_channel {TYPE_2__ kiss; TYPE_1__ stat; int lock; int ctrl; int tx_t; int dev; } ;


 int OutReg (int ,int ,int ) ;
 int R0 ;
 int R1 ;
 int R15 ;
 int RES_Tx_P ;
 int TXS_TIMEOUT ;
 int TxINT_ENAB ;
 int TxUIE ;
 int cl (struct scc_channel*,int ,int ) ;
 int del_timer (int *) ;
 struct scc_channel* from_timer (int ,struct timer_list*,int ) ;
 int netif_stop_queue (int ) ;
 struct scc_channel* scc ;
 int scc_discard_buffers (struct scc_channel*) ;
 int scc_start_tx_timer (struct scc_channel*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int t_tail ;
 int tx_wdog ;

__attribute__((used)) static void t_maxkeyup(struct timer_list *t)
{
 struct scc_channel *scc = from_timer(scc, t, tx_wdog);
 unsigned long flags;

 spin_lock_irqsave(&scc->lock, flags);





 netif_stop_queue(scc->dev);
 scc_discard_buffers(scc);

 del_timer(&scc->tx_t);

 cl(scc, R1, TxINT_ENAB);
 cl(scc, R15, TxUIE);
 OutReg(scc->ctrl, R0, RES_Tx_P);

 spin_unlock_irqrestore(&scc->lock, flags);

 scc->stat.txerrs++;
 scc->stat.tx_state = TXS_TIMEOUT;
 scc_start_tx_timer(scc, t_tail, scc->kiss.tailtime);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ fulldup; int persist; int txdelay; int slottime; scalar_t__ group; } ;
struct TYPE_3__ {scalar_t__ tx_state; } ;
struct scc_channel {int* wreg; TYPE_2__ kiss; scalar_t__ dcd; TYPE_1__ stat; int dev; int tx_queue; } ;


 scalar_t__ KISS_DUPLEX_HALF ;
 size_t R5 ;
 int RTS ;
 int Rand ;
 scalar_t__ TXS_BUSY ;
 scalar_t__ TXS_IDLE ;
 scalar_t__ TXS_WAIT ;
 int TX_ON ;
 struct scc_channel* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ is_grouped (struct scc_channel*) ;
 int netif_wake_queue (int ) ;
 struct scc_channel* scc ;
 int scc_key_trx (struct scc_channel*,int ) ;
 int scc_start_defer (struct scc_channel*) ;
 int scc_start_tx_timer (struct scc_channel*,void (*) (struct timer_list*),int ) ;
 scalar_t__ skb_queue_empty (int *) ;
 void t_txdelay (struct timer_list*) ;
 int tx_t ;

__attribute__((used)) static void t_dwait(struct timer_list *t)
{
 struct scc_channel *scc = from_timer(scc, t, tx_t);

 if (scc->stat.tx_state == TXS_WAIT)
 {
  if (skb_queue_empty(&scc->tx_queue)) {
   scc->stat.tx_state = TXS_IDLE;
   netif_wake_queue(scc->dev);
   return;
  }

  scc->stat.tx_state = TXS_BUSY;
 }

 if (scc->kiss.fulldup == KISS_DUPLEX_HALF)
 {
  Rand = Rand * 17 + 31;

  if (scc->dcd || (scc->kiss.persist) < Rand || (scc->kiss.group && is_grouped(scc)) )
  {
   scc_start_defer(scc);
   scc_start_tx_timer(scc, t_dwait, scc->kiss.slottime);
   return ;
  }
 }

 if ( !(scc->wreg[R5] & RTS) )
 {
  scc_key_trx(scc, TX_ON);
  scc_start_tx_timer(scc, t_txdelay, scc->kiss.txdelay);
 } else {
  scc_start_tx_timer(scc, t_txdelay, 0);
 }
}

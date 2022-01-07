
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct TYPE_10__ {int state; int txq_id; } ;
struct il_tid_data {TYPE_5__ agg; int tfds_in_queue; int seq_number; } ;
struct il_queue {int write_ptr; int read_ptr; } ;
struct il_priv {int vif; TYPE_4__* stations; int sta_lock; TYPE_1__* txq; } ;
struct TYPE_7__ {size_t* addr; } ;
struct TYPE_8__ {TYPE_2__ sta; } ;
struct TYPE_9__ {struct il_tid_data* tid; TYPE_3__ sta; } ;
struct TYPE_6__ {struct il_queue q; } ;


 int D_HT (char*) ;
 int IEEE80211_SEQ_TO_SN (int ) ;
 int IL_AGG_OFF ;
 int IL_AGG_ON ;


 int ieee80211_start_tx_ba_cb_irqsafe (int ,size_t*,size_t) ;
 int ieee80211_stop_tx_ba_cb_irqsafe (int ,size_t*,size_t) ;
 int il4965_get_fifo_from_tid (size_t) ;
 int il4965_txq_agg_disable (struct il_priv*,int,int ,int) ;
 int lockdep_assert_held (int *) ;

int
il4965_txq_check_empty(struct il_priv *il, int sta_id, u8 tid, int txq_id)
{
 struct il_queue *q = &il->txq[txq_id].q;
 u8 *addr = il->stations[sta_id].sta.sta.addr;
 struct il_tid_data *tid_data = &il->stations[sta_id].tid[tid];

 lockdep_assert_held(&il->sta_lock);

 switch (il->stations[sta_id].tid[tid].agg.state) {
 case 128:


  if (txq_id == tid_data->agg.txq_id &&
      q->read_ptr == q->write_ptr) {
   u16 ssn = IEEE80211_SEQ_TO_SN(tid_data->seq_number);
   int tx_fifo = il4965_get_fifo_from_tid(tid);
   D_HT("HW queue empty: continue DELBA flow\n");
   il4965_txq_agg_disable(il, txq_id, ssn, tx_fifo);
   tid_data->agg.state = IL_AGG_OFF;
   ieee80211_stop_tx_ba_cb_irqsafe(il->vif, addr, tid);
  }
  break;
 case 129:

  if (tid_data->tfds_in_queue == 0) {
   D_HT("HW queue empty: continue ADDBA flow\n");
   tid_data->agg.state = IL_AGG_ON;
   ieee80211_start_tx_ba_cb_irqsafe(il->vif, addr, tid);
  }
  break;
 }

 return 0;
}

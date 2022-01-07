
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct TYPE_10__ {size_t read_ptr; scalar_t__ low_mark; int n_bd; } ;
struct il_tx_queue {TYPE_5__ q; } ;
struct il_compressed_ba_resp {int sta_id; int tid; int scd_ssn; int scd_flow; int bitmap; int seq_ctl; int sta_addr_lo32; } ;
struct TYPE_6__ {struct il_compressed_ba_resp compressed_ba; } ;
struct il_rx_pkt {TYPE_1__ u; } ;
struct il_rx_buf {int dummy; } ;
struct TYPE_7__ {size_t max_txq_num; } ;
struct il_priv {int sta_lock; scalar_t__ mac80211_registered; TYPE_4__* stations; struct il_tx_queue* txq; TYPE_2__ hw_params; } ;
struct il_ht_agg {size_t txq_id; size_t start_idx; scalar_t__ state; scalar_t__ bitmap; int wait_for_ba; } ;
struct TYPE_9__ {TYPE_3__* tid; } ;
struct TYPE_8__ {struct il_ht_agg agg; } ;


 int D_TX_REPLY (char*,size_t,unsigned long long,...) ;
 scalar_t__ IL_EMPTYING_HW_QUEUE_DELBA ;
 int IL_ERR (char*) ;
 int il4965_free_tfds_in_queue (struct il_priv*,int,int,int) ;
 int il4965_tx_queue_reclaim (struct il_priv*,size_t,int) ;
 int il4965_tx_status_reply_compressed_ba (struct il_priv*,struct il_ht_agg*,struct il_compressed_ba_resp*) ;
 int il4965_txq_check_empty (struct il_priv*,int,int,size_t) ;
 int il_queue_dec_wrap (size_t,int ) ;
 scalar_t__ il_queue_space (TYPE_5__*) ;
 int il_wake_queue (struct il_priv*,struct il_tx_queue*) ;
 size_t le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
il4965_hdl_compressed_ba(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);
 struct il_compressed_ba_resp *ba_resp = &pkt->u.compressed_ba;
 struct il_tx_queue *txq = ((void*)0);
 struct il_ht_agg *agg;
 int idx;
 int sta_id;
 int tid;
 unsigned long flags;


 u16 scd_flow = le16_to_cpu(ba_resp->scd_flow);



 u16 ba_resp_scd_ssn = le16_to_cpu(ba_resp->scd_ssn);

 if (scd_flow >= il->hw_params.max_txq_num) {
  IL_ERR("BUG_ON scd_flow is bigger than number of queues\n");
  return;
 }

 txq = &il->txq[scd_flow];
 sta_id = ba_resp->sta_id;
 tid = ba_resp->tid;
 agg = &il->stations[sta_id].tid[tid].agg;
 if (unlikely(agg->txq_id != scd_flow)) {






  D_TX_REPLY("BA scd_flow %d does not match txq_id %d\n",
      scd_flow, agg->txq_id);
  return;
 }


 idx = il_queue_dec_wrap(ba_resp_scd_ssn & 0xff, txq->q.n_bd);

 spin_lock_irqsave(&il->sta_lock, flags);

 D_TX_REPLY("N_COMPRESSED_BA [%d] Received from %pM, " "sta_id = %d\n",
     agg->wait_for_ba, (u8 *) &ba_resp->sta_addr_lo32,
     ba_resp->sta_id);
 D_TX_REPLY("TID = %d, SeqCtl = %d, bitmap = 0x%llx," "scd_flow = "
     "%d, scd_ssn = %d\n", ba_resp->tid, ba_resp->seq_ctl,
     (unsigned long long)le64_to_cpu(ba_resp->bitmap),
     ba_resp->scd_flow, ba_resp->scd_ssn);
 D_TX_REPLY("DAT start_idx = %d, bitmap = 0x%llx\n", agg->start_idx,
     (unsigned long long)agg->bitmap);


 il4965_tx_status_reply_compressed_ba(il, agg, ba_resp);




 if (txq->q.read_ptr != (ba_resp_scd_ssn & 0xff)) {

  int freed = il4965_tx_queue_reclaim(il, scd_flow, idx);
  il4965_free_tfds_in_queue(il, sta_id, tid, freed);

  if (il_queue_space(&txq->q) > txq->q.low_mark &&
      il->mac80211_registered &&
      agg->state != IL_EMPTYING_HW_QUEUE_DELBA)
   il_wake_queue(il, txq);

  il4965_txq_check_empty(il, sta_id, tid, scd_flow);
 }

 spin_unlock_irqrestore(&il->sta_lock, flags);
}

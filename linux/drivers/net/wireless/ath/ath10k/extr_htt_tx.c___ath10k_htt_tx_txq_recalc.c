
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
typedef int u32 ;
typedef int u16 ;
struct ieee80211_txq {size_t tid; TYPE_2__* sta; TYPE_1__* vif; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k_vif {int peer_id; } ;
struct ath10k_sta {int peer_id; } ;
struct TYPE_9__ {scalar_t__ mode; int num_peers; size_t num_tids; TYPE_3__* vaddr; int enabled; } ;
struct TYPE_10__ {TYPE_4__ tx_q_state; int tx_lock; } ;
struct ath10k {TYPE_5__ htt; } ;
struct TYPE_8__ {size_t** count; int ** map; } ;
struct TYPE_7__ {scalar_t__ drv_priv; } ;
struct TYPE_6__ {scalar_t__ drv_priv; } ;


 int ATH10K_DBG_HTT ;
 int BIT (int) ;
 scalar_t__ HTT_TX_MODE_SWITCH_PUSH_PULL ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,size_t,size_t) ;
 size_t ath10k_htt_tx_txq_calc_size (unsigned long) ;
 int ath10k_warn (struct ath10k*,char*,int,size_t) ;
 int ieee80211_txq_get_depth (struct ieee80211_txq*,unsigned long*,unsigned long*) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __ath10k_htt_tx_txq_recalc(struct ieee80211_hw *hw,
           struct ieee80211_txq *txq)
{
 struct ath10k *ar = hw->priv;
 struct ath10k_sta *arsta;
 struct ath10k_vif *arvif = (void *)txq->vif->drv_priv;
 unsigned long frame_cnt;
 unsigned long byte_cnt;
 int idx;
 u32 bit;
 u16 peer_id;
 u8 tid;
 u8 count;

 lockdep_assert_held(&ar->htt.tx_lock);

 if (!ar->htt.tx_q_state.enabled)
  return;

 if (ar->htt.tx_q_state.mode != HTT_TX_MODE_SWITCH_PUSH_PULL)
  return;

 if (txq->sta) {
  arsta = (void *)txq->sta->drv_priv;
  peer_id = arsta->peer_id;
 } else {
  peer_id = arvif->peer_id;
 }

 tid = txq->tid;
 bit = BIT(peer_id % 32);
 idx = peer_id / 32;

 ieee80211_txq_get_depth(txq, &frame_cnt, &byte_cnt);
 count = ath10k_htt_tx_txq_calc_size(byte_cnt);

 if (unlikely(peer_id >= ar->htt.tx_q_state.num_peers) ||
     unlikely(tid >= ar->htt.tx_q_state.num_tids)) {
  ath10k_warn(ar, "refusing to update txq for peer_id %hu tid %hhu due to out of bounds\n",
       peer_id, tid);
  return;
 }

 ar->htt.tx_q_state.vaddr->count[tid][peer_id] = count;
 ar->htt.tx_q_state.vaddr->map[tid][idx] &= ~bit;
 ar->htt.tx_q_state.vaddr->map[tid][idx] |= count ? bit : 0;

 ath10k_dbg(ar, ATH10K_DBG_HTT, "htt tx txq state update peer_id %hu tid %hhu count %hhu\n",
     peer_id, tid, count);
}

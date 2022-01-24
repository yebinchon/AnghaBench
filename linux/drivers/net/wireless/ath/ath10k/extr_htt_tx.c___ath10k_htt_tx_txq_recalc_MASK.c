#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct ieee80211_txq {size_t tid; TYPE_2__* sta; TYPE_1__* vif; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k_vif {int peer_id; } ;
struct ath10k_sta {int peer_id; } ;
struct TYPE_9__ {scalar_t__ mode; int num_peers; size_t num_tids; TYPE_3__* vaddr; int /*<<< orphan*/  enabled; } ;
struct TYPE_10__ {TYPE_4__ tx_q_state; int /*<<< orphan*/  tx_lock; } ;
struct ath10k {TYPE_5__ htt; } ;
struct TYPE_8__ {size_t** count; int /*<<< orphan*/ ** map; } ;
struct TYPE_7__ {scalar_t__ drv_priv; } ;
struct TYPE_6__ {scalar_t__ drv_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_HTT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ HTT_TX_MODE_SWITCH_PUSH_PULL ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int,size_t,size_t) ; 
 size_t FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_txq*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw,
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

	FUNC5(&ar->htt.tx_lock);

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
	bit = FUNC0(peer_id % 32);
	idx = peer_id / 32;

	FUNC4(txq, &frame_cnt, &byte_cnt);
	count = FUNC2(byte_cnt);

	if (FUNC6(peer_id >= ar->htt.tx_q_state.num_peers) ||
	    FUNC6(tid >= ar->htt.tx_q_state.num_tids)) {
		FUNC3(ar, "refusing to update txq for peer_id %hu tid %hhu due to out of bounds\n",
			    peer_id, tid);
		return;
	}

	ar->htt.tx_q_state.vaddr->count[tid][peer_id] = count;
	ar->htt.tx_q_state.vaddr->map[tid][idx] &= ~bit;
	ar->htt.tx_q_state.vaddr->map[tid][idx] |= count ? bit : 0;

	FUNC1(ar, ATH10K_DBG_HTT, "htt tx txq state update peer_id %hu tid %hhu count %hhu\n",
		   peer_id, tid, count);
}
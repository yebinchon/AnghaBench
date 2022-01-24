#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct htt_rx_addba {int /*<<< orphan*/  window_size; int /*<<< orphan*/  info0; } ;
struct htt_resp {struct htt_rx_addba rx_addba; } ;
struct ath10k_vif {int /*<<< orphan*/  vif; } ;
struct ath10k_peer {int /*<<< orphan*/  addr; int /*<<< orphan*/  vdev_id; } ;
struct ath10k {int /*<<< orphan*/  data_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_HTT ; 
 int /*<<< orphan*/  HTT_RX_BA_INFO0_PEER_ID ; 
 int /*<<< orphan*/  HTT_RX_BA_INFO0_TID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath10k_vif* FUNC3 (struct ath10k*,int /*<<< orphan*/ ) ; 
 struct ath10k_peer* FUNC4 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ath10k *ar, struct htt_resp *resp)
{
	struct htt_rx_addba *ev = &resp->rx_addba;
	struct ath10k_peer *peer;
	struct ath10k_vif *arvif;
	u16 info0, tid, peer_id;

	info0 = FUNC1(ev->info0);
	tid = FUNC0(info0, HTT_RX_BA_INFO0_TID);
	peer_id = FUNC0(info0, HTT_RX_BA_INFO0_PEER_ID);

	FUNC2(ar, ATH10K_DBG_HTT,
		   "htt rx addba tid %hu peer_id %hu size %hhu\n",
		   tid, peer_id, ev->window_size);

	FUNC7(&ar->data_lock);
	peer = FUNC4(ar, peer_id);
	if (!peer) {
		FUNC5(ar, "received addba event for invalid peer_id: %hu\n",
			    peer_id);
		FUNC8(&ar->data_lock);
		return;
	}

	arvif = FUNC3(ar, peer->vdev_id);
	if (!arvif) {
		FUNC5(ar, "received addba event for invalid vdev_id: %u\n",
			    peer->vdev_id);
		FUNC8(&ar->data_lock);
		return;
	}

	FUNC2(ar, ATH10K_DBG_HTT,
		   "htt rx start rx ba session sta %pM tid %hu size %hhu\n",
		   peer->addr, tid, ev->window_size);

	FUNC6(arvif->vif, peer->addr, tid);
	FUNC8(&ar->data_lock);
}
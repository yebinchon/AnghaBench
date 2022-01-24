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
struct htt_peer_unmap_event {size_t peer_id; } ;
struct ath10k_peer {int /*<<< orphan*/  list; int /*<<< orphan*/  peer_ids; int /*<<< orphan*/  addr; int /*<<< orphan*/  vdev_id; } ;
struct ath10k_htt {struct ath10k* ar; } ;
struct ath10k {int /*<<< orphan*/  data_lock; int /*<<< orphan*/  peer_mapping_wq; int /*<<< orphan*/ ** peer_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_HTT ; 
 size_t ATH10K_MAX_NUM_PEER_IDS ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct ath10k_peer* FUNC1 (struct ath10k*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k_peer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct ath10k_htt *htt,
			     struct htt_peer_unmap_event *ev)
{
	struct ath10k *ar = htt->ar;
	struct ath10k_peer *peer;

	if (ev->peer_id >= ATH10K_MAX_NUM_PEER_IDS) {
		FUNC2(ar,
			    "received htt peer unmap event with idx out of bounds: %hu\n",
			    ev->peer_id);
		return;
	}

	FUNC7(&ar->data_lock);
	peer = FUNC1(ar, ev->peer_id);
	if (!peer) {
		FUNC2(ar, "peer-unmap-event: unknown peer id %d\n",
			    ev->peer_id);
		goto exit;
	}

	FUNC0(ar, ATH10K_DBG_HTT, "htt peer unmap vdev %d peer %pM id %d\n",
		   peer->vdev_id, peer->addr, ev->peer_id);

	ar->peer_map[ev->peer_id] = NULL;
	FUNC4(ev->peer_id, peer->peer_ids);

	if (FUNC3(peer->peer_ids, ATH10K_MAX_NUM_PEER_IDS)) {
		FUNC6(&peer->list);
		FUNC5(peer);
		FUNC9(&ar->peer_mapping_wq);
	}

exit:
	FUNC8(&ar->data_lock);
}
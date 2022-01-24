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
struct htt_peer_map_event {size_t peer_id; int /*<<< orphan*/  addr; int /*<<< orphan*/  vdev_id; } ;
struct ath10k_peer {int /*<<< orphan*/  peer_ids; int /*<<< orphan*/  list; int /*<<< orphan*/  addr; int /*<<< orphan*/  vdev_id; } ;
struct ath10k_htt {struct ath10k* ar; } ;
struct ath10k {int /*<<< orphan*/  data_lock; struct ath10k_peer** peer_map; int /*<<< orphan*/  peer_mapping_wq; int /*<<< orphan*/  peers; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_HTT ; 
 size_t ATH10K_MAX_NUM_PEER_IDS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct ath10k_peer* FUNC2 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath10k_peer* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct ath10k_htt *htt,
			   struct htt_peer_map_event *ev)
{
	struct ath10k *ar = htt->ar;
	struct ath10k_peer *peer;

	if (ev->peer_id >= ATH10K_MAX_NUM_PEER_IDS) {
		FUNC3(ar,
			    "received htt peer map event with idx out of bounds: %hu\n",
			    ev->peer_id);
		return;
	}

	FUNC8(&ar->data_lock);
	peer = FUNC2(ar, ev->vdev_id, ev->addr);
	if (!peer) {
		peer = FUNC5(sizeof(*peer), GFP_ATOMIC);
		if (!peer)
			goto exit;

		peer->vdev_id = ev->vdev_id;
		FUNC4(peer->addr, ev->addr);
		FUNC6(&peer->list, &ar->peers);
		FUNC10(&ar->peer_mapping_wq);
	}

	FUNC1(ar, ATH10K_DBG_HTT, "htt peer map vdev %d peer %pM id %d\n",
		   ev->vdev_id, ev->addr, ev->peer_id);

	FUNC0(ar->peer_map[ev->peer_id] && (ar->peer_map[ev->peer_id] != peer));
	ar->peer_map[ev->peer_id] = peer;
	FUNC7(ev->peer_id, peer->peer_ids);
exit:
	FUNC9(&ar->data_lock);
}
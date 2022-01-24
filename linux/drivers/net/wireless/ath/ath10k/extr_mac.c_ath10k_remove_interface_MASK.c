#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_vif {scalar_t__ type; int /*<<< orphan*/  txq; int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  noa_data; } ;
struct TYPE_6__ {TYPE_1__ ap; } ;
struct ath10k_vif {long long vdev_id; scalar_t__ vdev_type; TYPE_2__ u; int /*<<< orphan*/  ar; int /*<<< orphan*/  list; int /*<<< orphan*/  connection_loss_work; int /*<<< orphan*/  ap_csa_work; } ;
struct ath10k_peer {struct ieee80211_vif* vif; } ;
struct TYPE_8__ {int /*<<< orphan*/  tx_lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  svc_map; } ;
struct ath10k {long long free_vdev_map; int /*<<< orphan*/  conf_mutex; TYPE_4__ htt; int /*<<< orphan*/ * monitor_arvif; int /*<<< orphan*/  data_lock; struct ath10k_peer** peer_map; int /*<<< orphan*/  num_peers; int /*<<< orphan*/  vdev_delete_done; TYPE_3__ wmi; } ;

/* Variables and functions */
 int FUNC0 (struct ath10k_peer**) ; 
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int /*<<< orphan*/  ATH10K_VDEV_DELETE_TIMEOUT_HZ ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  WMI_SERVICE_SYNC_DELETE_CMDS ; 
 scalar_t__ WMI_VDEV_TYPE_AP ; 
 scalar_t__ WMI_VDEV_TYPE_IBSS ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,long long) ; 
 int FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k_vif*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k_vif*) ; 
 int FUNC6 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,long long) ; 
 int FUNC8 (struct ath10k_vif*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath10k*,long long,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ath10k*,long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ath10k*,char*,...) ; 
 int FUNC12 (int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ath10k*,long long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC24(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif)
{
	struct ath10k *ar = hw->priv;
	struct ath10k_vif *arvif = (void *)vif->drv_priv;
	struct ath10k_peer *peer;
	unsigned long time_left;
	int ret;
	int i;

	FUNC15(&arvif->ap_csa_work);
	FUNC14(&arvif->connection_loss_work);

	FUNC18(&ar->conf_mutex);

	ret = FUNC8(arvif);
	if (ret)
		FUNC11(ar, "failed to stop spectral for vdev %i: %d\n",
			    arvif->vdev_id, ret);

	ar->free_vdev_map |= 1LL << arvif->vdev_id;
	FUNC20(&ar->data_lock);
	FUNC17(&arvif->list);
	FUNC21(&ar->data_lock);

	if (arvif->vdev_type == WMI_VDEV_TYPE_AP ||
	    arvif->vdev_type == WMI_VDEV_TYPE_IBSS) {
		ret = FUNC12(arvif->ar, arvif->vdev_id,
					     vif->addr);
		if (ret)
			FUNC11(ar, "failed to submit AP/IBSS self-peer removal on vdev %i: %d\n",
				    arvif->vdev_id, ret);

		FUNC9(ar, arvif->vdev_id,
						 vif->addr);
		FUNC16(arvif->u.ap.noa_data);
	}

	FUNC1(ar, ATH10K_DBG_MAC, "mac vdev %i delete (remove interface)\n",
		   arvif->vdev_id);

	ret = FUNC13(ar, arvif->vdev_id);
	if (ret)
		FUNC11(ar, "failed to delete WMI vdev %i: %d\n",
			    arvif->vdev_id, ret);

	if (FUNC22(WMI_SERVICE_SYNC_DELETE_CMDS, ar->wmi.svc_map)) {
		time_left = FUNC23(&ar->vdev_delete_done,
							ATH10K_VDEV_DELETE_TIMEOUT_HZ);
		if (time_left == 0) {
			FUNC11(ar, "Timeout in receiving vdev delete response\n");
			goto out;
		}
	}

	/* Some firmware revisions don't notify host about self-peer removal
	 * until after associated vdev is deleted.
	 */
	if (arvif->vdev_type == WMI_VDEV_TYPE_AP ||
	    arvif->vdev_type == WMI_VDEV_TYPE_IBSS) {
		ret = FUNC10(ar, arvif->vdev_id,
						   vif->addr);
		if (ret)
			FUNC11(ar, "failed to remove AP self-peer on vdev %i: %d\n",
				    arvif->vdev_id, ret);

		FUNC20(&ar->data_lock);
		ar->num_peers--;
		FUNC21(&ar->data_lock);
	}

	FUNC20(&ar->data_lock);
	for (i = 0; i < FUNC0(ar->peer_map); i++) {
		peer = ar->peer_map[i];
		if (!peer)
			continue;

		if (peer->vif == vif) {
			FUNC11(ar, "found vif peer %pM entry on vdev %i after it was supposedly removed\n",
				    vif->addr, arvif->vdev_id);
			peer->vif = NULL;
		}
	}

	/* Clean this up late, less opportunity for firmware to access
	 * DMA memory we have deleted.
	 */
	FUNC4(arvif);
	FUNC21(&ar->data_lock);

	FUNC7(ar, arvif->vdev_id);
	FUNC3(ar, vif->txq);

	if (vif->type == NL80211_IFTYPE_MONITOR) {
		ar->monitor_arvif = NULL;
		ret = FUNC6(ar);
		if (ret)
			FUNC11(ar, "failed to recalc monitor: %d\n", ret);
	}

	ret = FUNC2(ar);
	if (ret)
		FUNC11(ar, "failed to recalc tx power: %d\n", ret);

	FUNC20(&ar->htt.tx_lock);
	FUNC5(arvif);
	FUNC21(&ar->htt.tx_lock);

	FUNC3(ar, vif->txq);

out:
	FUNC19(&ar->conf_mutex);
}
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
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_sta_vht_cap {int dummy; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k_vif {int def_wep_key_idx; int is_up; int /*<<< orphan*/  connection_loss_work; int /*<<< orphan*/  vdev_id; int /*<<< orphan*/  bssid; } ;
struct ath10k {int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta_vht_cap) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw,
				struct ieee80211_vif *vif)
{
	struct ath10k *ar = hw->priv;
	struct ath10k_vif *arvif = (void *)vif->drv_priv;
	struct ieee80211_sta_vht_cap vht_cap = {};
	int ret;

	FUNC5(&ar->conf_mutex);

	FUNC0(ar, ATH10K_DBG_MAC, "mac vdev %i disassoc bssid %pM\n",
		   arvif->vdev_id, arvif->bssid);

	ret = FUNC3(ar, arvif->vdev_id);
	if (ret)
		FUNC2(ar, "failed to down vdev %i: %d\n",
			    arvif->vdev_id, ret);

	arvif->def_wep_key_idx = -1;

	ret = FUNC1(ar, vif, vht_cap);
	if (ret) {
		FUNC2(ar, "failed to recalc txbf for vdev %i: %d\n",
			    arvif->vdev_id, ret);
		return;
	}

	arvif->is_up = false;

	FUNC4(&arvif->connection_loss_work);
}
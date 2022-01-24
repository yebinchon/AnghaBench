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
struct ieee80211_bss_conf {int /*<<< orphan*/  bssid; int /*<<< orphan*/  enable_beacon; } ;
struct ath10k_vif {int is_up; int tx_seq_no; int /*<<< orphan*/  vdev_id; int /*<<< orphan*/  bssid; scalar_t__ aid; struct ath10k* ar; } ;
struct ath10k {int /*<<< orphan*/  data_lock; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k_vif*) ; 
 int FUNC2 (struct ath10k_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ath10k*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct ath10k_vif *arvif,
				     struct ieee80211_bss_conf *info)
{
	struct ath10k *ar = arvif->ar;
	int ret = 0;

	FUNC7(&arvif->ar->conf_mutex);

	if (!info->enable_beacon) {
		ret = FUNC4(ar, arvif->vdev_id);
		if (ret)
			FUNC3(ar, "failed to down vdev_id %i: %d\n",
				    arvif->vdev_id, ret);

		arvif->is_up = false;

		FUNC8(&arvif->ar->data_lock);
		FUNC1(arvif);
		FUNC9(&arvif->ar->data_lock);

		return;
	}

	arvif->tx_seq_no = 0x1000;

	arvif->aid = 0;
	FUNC6(arvif->bssid, info->bssid);

	ret = FUNC5(arvif->ar, arvif->vdev_id, arvif->aid,
				 arvif->bssid);
	if (ret) {
		FUNC3(ar, "failed to bring up vdev %d: %i\n",
			    arvif->vdev_id, ret);
		return;
	}

	arvif->is_up = true;

	ret = FUNC2(arvif);
	if (ret) {
		FUNC3(ar, "failed to fix hidden ssid for vdev %i, expect trouble: %d\n",
			    arvif->vdev_id, ret);
		return;
	}

	FUNC0(ar, ATH10K_DBG_MAC, "mac vdev %d up\n", arvif->vdev_id);
}
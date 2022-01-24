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
struct wmi_peer_assoc_complete_arg {int dummy; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_sta_vht_cap {int dummy; } ;
struct ieee80211_sta_ht_cap {int dummy; } ;
struct ieee80211_sta {struct ieee80211_sta_vht_cap vht_cap; struct ieee80211_sta_ht_cap ht_cap; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ieee80211_bss_conf {int /*<<< orphan*/  bssid; int /*<<< orphan*/  aid; } ;
struct ath10k_vif {int is_up; int /*<<< orphan*/  vdev_id; int /*<<< orphan*/  bssid; int /*<<< orphan*/  aid; } ;
struct ath10k {int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WMI_PEER_DUMMY_VAR ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta_vht_cap) ; 
 int FUNC3 (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ; 
 int FUNC4 (struct ath10k*,struct ath10k_vif*,int /*<<< orphan*/ ,struct ieee80211_sta_ht_cap*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,char*,int /*<<< orphan*/ ,int,...) ; 
 int FUNC6 (struct ath10k*,struct wmi_peer_assoc_complete_arg*) ; 
 int FUNC7 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_sta* FUNC10 (struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void FUNC14(struct ieee80211_hw *hw,
			     struct ieee80211_vif *vif,
			     struct ieee80211_bss_conf *bss_conf)
{
	struct ath10k *ar = hw->priv;
	struct ath10k_vif *arvif = (void *)vif->drv_priv;
	struct ieee80211_sta_ht_cap ht_cap;
	struct ieee80211_sta_vht_cap vht_cap;
	struct wmi_peer_assoc_complete_arg peer_arg;
	struct ieee80211_sta *ap_sta;
	int ret;

	FUNC11(&ar->conf_mutex);

	FUNC1(ar, ATH10K_DBG_MAC, "mac vdev %i assoc bssid %pM aid %d\n",
		   arvif->vdev_id, arvif->bssid, arvif->aid);

	FUNC12();

	ap_sta = FUNC10(vif, bss_conf->bssid);
	if (!ap_sta) {
		FUNC5(ar, "failed to find station entry for bss %pM vdev %i\n",
			    bss_conf->bssid, arvif->vdev_id);
		FUNC13();
		return;
	}

	/* ap_sta must be accessed only within rcu section which must be left
	 * before calling ath10k_setup_peer_smps() which might sleep.
	 */
	ht_cap = ap_sta->ht_cap;
	vht_cap = ap_sta->vht_cap;

	ret = FUNC3(ar, vif, ap_sta, &peer_arg);
	if (ret) {
		FUNC5(ar, "failed to prepare peer assoc for %pM vdev %i: %d\n",
			    bss_conf->bssid, arvif->vdev_id, ret);
		FUNC13();
		return;
	}

	FUNC13();

	ret = FUNC6(ar, &peer_arg);
	if (ret) {
		FUNC5(ar, "failed to run peer assoc for %pM vdev %i: %d\n",
			    bss_conf->bssid, arvif->vdev_id, ret);
		return;
	}

	ret = FUNC4(ar, arvif, bss_conf->bssid, &ht_cap);
	if (ret) {
		FUNC5(ar, "failed to setup peer SMPS for vdev %i: %d\n",
			    arvif->vdev_id, ret);
		return;
	}

	ret = FUNC2(ar, vif, vht_cap);
	if (ret) {
		FUNC5(ar, "failed to recalc txbf for vdev %i on bss %pM: %d\n",
			    arvif->vdev_id, bss_conf->bssid, ret);
		return;
	}

	FUNC1(ar, ATH10K_DBG_MAC,
		   "mac vdev %d up (associated) bssid %pM aid %d\n",
		   arvif->vdev_id, bss_conf->bssid, bss_conf->aid);

	FUNC0(arvif->is_up);

	arvif->aid = bss_conf->aid;
	FUNC9(arvif->bssid, bss_conf->bssid);

	ret = FUNC8(ar, arvif->vdev_id, arvif->aid, arvif->bssid);
	if (ret) {
		FUNC5(ar, "failed to set vdev %d up: %d\n",
			    arvif->vdev_id, ret);
		return;
	}

	arvif->is_up = true;

	/* Workaround: Some firmware revisions (tested with qca6174
	 * WLAN.RM.2.0-00073) have buggy powersave state machine and must be
	 * poked with peer param command.
	 */
	ret = FUNC7(ar, arvif->vdev_id, arvif->bssid,
					WMI_PEER_DUMMY_VAR, 1);
	if (ret) {
		FUNC5(ar, "failed to poke peer %pM param for ps workaround on vdev %i: %d\n",
			    arvif->bssid, arvif->vdev_id, ret);
		return;
	}
}
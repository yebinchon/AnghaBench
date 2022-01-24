#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mwl8k_vif {TYPE_2__* wep_key_conf; } ;
struct mwl8k_priv {int /*<<< orphan*/  ap_fw; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_4__ {scalar_t__ ht_supported; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; } ;
struct ieee80211_key_conf {int dummy; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;
struct TYPE_6__ {int peer_id; int is_ampdu_allowed; } ;
struct TYPE_5__ {scalar_t__ enabled; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 struct ieee80211_key_conf* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct ieee80211_sta*) ; 
 struct mwl8k_vif* FUNC2 (struct ieee80211_vif*) ; 
 int NUM_WEP_KEYS ; 
 int /*<<< orphan*/  SET_KEY ; 
 int FUNC3 (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_sta*) ; 
 int FUNC4 (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ,struct ieee80211_vif*,struct ieee80211_sta*,struct ieee80211_key_conf*) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw,
			 struct ieee80211_vif *vif,
			 struct ieee80211_sta *sta)
{
	struct mwl8k_priv *priv = hw->priv;
	int ret;
	int i;
	struct mwl8k_vif *mwl8k_vif = FUNC2(vif);
	struct ieee80211_key_conf *key;

	if (!priv->ap_fw) {
		ret = FUNC4(hw, vif, sta);
		if (ret >= 0) {
			FUNC1(sta)->peer_id = ret;
			if (sta->ht_cap.ht_supported)
				FUNC1(sta)->is_ampdu_allowed = true;
			ret = 0;
		}

	} else {
		ret = FUNC3(hw, vif, sta);
	}

	for (i = 0; i < NUM_WEP_KEYS; i++) {
		key = FUNC0(mwl8k_vif->wep_key_conf[i].key);
		if (mwl8k_vif->wep_key_conf[i].enabled)
			FUNC5(hw, SET_KEY, vif, sta, key);
	}
	return ret;
}
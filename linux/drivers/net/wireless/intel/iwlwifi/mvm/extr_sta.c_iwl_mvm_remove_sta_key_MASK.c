#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct iwl_mvm_sta {int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm {scalar_t__* fw_key_deleted; int /*<<< orphan*/  fw_key_table; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int flags; scalar_t__ cipher; size_t hw_key_idx; int /*<<< orphan*/  keyidx; } ;
struct TYPE_3__ {int /*<<< orphan*/  sta_id; } ;
struct TYPE_4__ {TYPE_1__ mcast_sta; } ;

/* Variables and functions */
 int ENOENT ; 
 int IEEE80211_KEY_FLAG_PAIRWISE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,size_t) ; 
 int /*<<< orphan*/  IWL_MVM_INVALID_STA ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int STA_KEY_MAX_NUM ; 
 scalar_t__ U8_MAX ; 
 scalar_t__ WLAN_CIPHER_SUITE_AES_CMAC ; 
 scalar_t__ WLAN_CIPHER_SUITE_BIP_GMAC_128 ; 
 scalar_t__ WLAN_CIPHER_SUITE_BIP_GMAC_256 ; 
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ; 
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,struct ieee80211_key_conf*,int) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_sta* FUNC4 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ; 
 int FUNC5 (struct iwl_mvm*,struct ieee80211_key_conf*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC6 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct iwl_mvm *mvm,
			   struct ieee80211_vif *vif,
			   struct ieee80211_sta *sta,
			   struct ieee80211_key_conf *keyconf)
{
	bool mcast = !(keyconf->flags & IEEE80211_KEY_FLAG_PAIRWISE);
	struct iwl_mvm_sta *mvm_sta;
	u8 sta_id = IWL_MVM_INVALID_STA;
	int ret, i;

	FUNC7(&mvm->mutex);

	/* Get the station from the mvm local station table */
	mvm_sta = FUNC4(mvm, vif, sta);
	if (mvm_sta)
		sta_id = mvm_sta->sta_id;
	else if (!sta && vif->type == NL80211_IFTYPE_AP && mcast)
		sta_id = FUNC6(vif)->mcast_sta.sta_id;


	FUNC0(mvm, "mvm remove dynamic key: idx=%d sta=%d\n",
		      keyconf->keyidx, sta_id);

	if (mvm_sta && (keyconf->cipher == WLAN_CIPHER_SUITE_AES_CMAC ||
			keyconf->cipher == WLAN_CIPHER_SUITE_BIP_GMAC_128 ||
			keyconf->cipher == WLAN_CIPHER_SUITE_BIP_GMAC_256))
		return FUNC5(mvm, keyconf, sta_id, true);

	if (!FUNC3(keyconf->hw_key_idx, mvm->fw_key_table)) {
		FUNC1(mvm, "offset %d not used in fw key table.\n",
			keyconf->hw_key_idx);
		return -ENOENT;
	}

	/* track which key was deleted last */
	for (i = 0; i < STA_KEY_MAX_NUM; i++) {
		if (mvm->fw_key_deleted[i] < U8_MAX)
			mvm->fw_key_deleted[i]++;
	}
	mvm->fw_key_deleted[keyconf->hw_key_idx] = 0;

	if (sta && !mvm_sta) {
		FUNC0(mvm, "station non-existent, early return.\n");
		return 0;
	}

	ret = FUNC2(mvm, sta_id, keyconf, mcast);
	if (ret)
		return ret;

	/* delete WEP key twice to get rid of (now useless) offset */
	if (keyconf->cipher == WLAN_CIPHER_SUITE_WEP40 ||
	    keyconf->cipher == WLAN_CIPHER_SUITE_WEP104)
		ret = FUNC2(mvm, sta_id, keyconf, !mcast);

	return ret;
}
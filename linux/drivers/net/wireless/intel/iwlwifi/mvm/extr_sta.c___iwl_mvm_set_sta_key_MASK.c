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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm_vif {TYPE_1__ mcast_sta; } ;
struct iwl_mvm_sta {int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int mfp; } ;
struct TYPE_4__ {int /*<<< orphan*/  iv32; } ;
struct ieee80211_key_seq {TYPE_2__ tkip; } ;
struct ieee80211_key_conf {int flags; int cipher; } ;

/* Variables and functions */
 int EINVAL ; 
 int IEEE80211_KEY_FLAG_PAIRWISE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
#define  WLAN_CIPHER_SUITE_CCMP 133 
#define  WLAN_CIPHER_SUITE_GCMP 132 
#define  WLAN_CIPHER_SUITE_GCMP_256 131 
#define  WLAN_CIPHER_SUITE_TKIP 130 
#define  WLAN_CIPHER_SUITE_WEP104 129 
#define  WLAN_CIPHER_SUITE_WEP40 128 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_key_conf*,int /*<<< orphan*/ ,struct ieee80211_key_seq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_key_conf*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ; 
 int FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ ,struct ieee80211_key_conf*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct iwl_mvm_sta* FUNC5 (struct ieee80211_sta*) ; 
 struct iwl_mvm_vif* FUNC6 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC7(struct iwl_mvm *mvm,
				 struct ieee80211_vif *vif,
				 struct ieee80211_sta *sta,
				 struct ieee80211_key_conf *keyconf,
				 u8 key_offset,
				 bool mcast)
{
	int ret;
	const u8 *addr;
	struct ieee80211_key_seq seq;
	u16 p1k[5];
	u32 sta_id;
	bool mfp = false;

	if (sta) {
		struct iwl_mvm_sta *mvm_sta = FUNC5(sta);

		sta_id = mvm_sta->sta_id;
		mfp = sta->mfp;
	} else if (vif->type == NL80211_IFTYPE_AP &&
		   !(keyconf->flags & IEEE80211_KEY_FLAG_PAIRWISE)) {
		struct iwl_mvm_vif *mvmvif = FUNC6(vif);

		sta_id = mvmvif->mcast_sta.sta_id;
	} else {
		FUNC0(mvm, "Failed to find station id\n");
		return -EINVAL;
	}

	switch (keyconf->cipher) {
	case WLAN_CIPHER_SUITE_TKIP:
		addr = FUNC3(mvm, vif, sta);
		/* get phase 1 key from mac80211 */
		FUNC1(keyconf, 0, &seq);
		FUNC2(keyconf, addr, seq.tkip.iv32, p1k);
		ret = FUNC4(mvm, sta_id, keyconf, mcast,
					   seq.tkip.iv32, p1k, 0, key_offset,
					   mfp);
		break;
	case WLAN_CIPHER_SUITE_CCMP:
	case WLAN_CIPHER_SUITE_WEP40:
	case WLAN_CIPHER_SUITE_WEP104:
	case WLAN_CIPHER_SUITE_GCMP:
	case WLAN_CIPHER_SUITE_GCMP_256:
		ret = FUNC4(mvm, sta_id, keyconf, mcast,
					   0, NULL, 0, key_offset, mfp);
		break;
	default:
		ret = FUNC4(mvm, sta_id, keyconf, mcast,
					   0, NULL, 0, key_offset, mfp);
	}

	return ret;
}
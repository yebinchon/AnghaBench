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
typedef  scalar_t__ u8 ;
struct TYPE_6__ {int /*<<< orphan*/  key_mapping_keys; } ;
struct il_priv {int /*<<< orphan*/  mutex; TYPE_3__ _4965; TYPE_2__* cfg; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int flags; scalar_t__ cipher; scalar_t__ hw_key_idx; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
typedef  enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;
struct TYPE_5__ {TYPE_1__* mod_params; } ;
struct TYPE_4__ {scalar_t__ sw_crypto; } ;

/* Variables and functions */
#define  DISABLE_KEY 129 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ HW_KEY_DEFAULT ; 
 int IEEE80211_KEY_FLAG_PAIRWISE ; 
 scalar_t__ IL_INVALID_STATION ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
#define  SET_KEY 128 
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ; 
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ; 
 int FUNC1 (struct il_priv*,struct ieee80211_key_conf*) ; 
 int FUNC2 (struct il_priv*,struct ieee80211_key_conf*,scalar_t__) ; 
 int FUNC3 (struct il_priv*,struct ieee80211_key_conf*) ; 
 int FUNC4 (struct il_priv*,struct ieee80211_key_conf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct il_priv*,int) ; 
 scalar_t__ FUNC6 (struct il_priv*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct ieee80211_hw *hw, enum set_key_cmd cmd,
		   struct ieee80211_vif *vif, struct ieee80211_sta *sta,
		   struct ieee80211_key_conf *key)
{
	struct il_priv *il = hw->priv;
	int ret;
	u8 sta_id;
	bool is_default_wep_key = false;

	FUNC0("enter\n");

	if (il->cfg->mod_params->sw_crypto) {
		FUNC0("leave - hwcrypto disabled\n");
		return -EOPNOTSUPP;
	}

	/*
	 * To support IBSS RSN, don't program group keys in IBSS, the
	 * hardware will then not attempt to decrypt the frames.
	 */
	if (vif->type == NL80211_IFTYPE_ADHOC &&
	    !(key->flags & IEEE80211_KEY_FLAG_PAIRWISE)) {
		FUNC0("leave - ad-hoc group key\n");
		return -EOPNOTSUPP;
	}

	sta_id = FUNC6(il, sta);
	if (sta_id == IL_INVALID_STATION)
		return -EINVAL;

	FUNC7(&il->mutex);
	FUNC5(il, 100);

	/*
	 * If we are getting WEP group key and we didn't receive any key mapping
	 * so far, we are in legacy wep mode (group key only), otherwise we are
	 * in 1X mode.
	 * In legacy wep mode, we use another host command to the uCode.
	 */
	if ((key->cipher == WLAN_CIPHER_SUITE_WEP40 ||
	     key->cipher == WLAN_CIPHER_SUITE_WEP104) && !sta) {
		if (cmd == SET_KEY)
			is_default_wep_key = !il->_4965.key_mapping_keys;
		else
			is_default_wep_key =
			    (key->hw_key_idx == HW_KEY_DEFAULT);
	}

	switch (cmd) {
	case SET_KEY:
		if (is_default_wep_key)
			ret = FUNC3(il, key);
		else
			ret = FUNC4(il, key, sta_id);

		FUNC0("enable hwcrypto key\n");
		break;
	case DISABLE_KEY:
		if (is_default_wep_key)
			ret = FUNC1(il, key);
		else
			ret = FUNC2(il, key, sta_id);

		FUNC0("disable hwcrypto key\n");
		break;
	default:
		ret = -EINVAL;
	}

	FUNC8(&il->mutex);
	FUNC0("leave\n");

	return ret;
}
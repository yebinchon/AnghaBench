#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct il_priv {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int flags; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
typedef  enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;
struct TYPE_2__ {scalar_t__ sw_crypto; } ;

/* Variables and functions */
#define  DISABLE_KEY 129 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int IEEE80211_KEY_FLAG_PAIRWISE ; 
 scalar_t__ IL_INVALID_STATION ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
#define  SET_KEY 128 
 int FUNC1 (struct il_priv*,scalar_t__) ; 
 TYPE_1__ il3945_mod_params ; 
 int FUNC2 (struct il_priv*) ; 
 int FUNC3 (struct il_priv*,struct ieee80211_key_conf*,scalar_t__) ; 
 int FUNC4 (struct il_priv*,struct ieee80211_key_conf*) ; 
 int /*<<< orphan*/  FUNC5 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct il_priv*,int) ; 
 scalar_t__ FUNC7 (struct il_priv*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct ieee80211_hw *hw, enum set_key_cmd cmd,
		   struct ieee80211_vif *vif, struct ieee80211_sta *sta,
		   struct ieee80211_key_conf *key)
{
	struct il_priv *il = hw->priv;
	int ret = 0;
	u8 sta_id = IL_INVALID_STATION;
	u8 static_key;

	FUNC0("enter\n");

	if (il3945_mod_params.sw_crypto) {
		FUNC0("leave - hwcrypto disabled\n");
		return -EOPNOTSUPP;
	}

	/*
	 * To support IBSS RSN, don't program group keys in IBSS, the
	 * hardware will then not attempt to decrypt the frames.
	 */
	if (vif->type == NL80211_IFTYPE_ADHOC &&
	    !(key->flags & IEEE80211_KEY_FLAG_PAIRWISE)) {
		FUNC0("leave - IBSS RSN\n");
		return -EOPNOTSUPP;
	}

	static_key = !FUNC5(il);

	if (!static_key) {
		sta_id = FUNC7(il, sta);
		if (sta_id == IL_INVALID_STATION) {
			FUNC0("leave - station not found\n");
			return -EINVAL;
		}
	}

	FUNC8(&il->mutex);
	FUNC6(il, 100);

	switch (cmd) {
	case SET_KEY:
		if (static_key)
			ret = FUNC4(il, key);
		else
			ret = FUNC3(il, key, sta_id);
		FUNC0("enable hwcrypto key\n");
		break;
	case DISABLE_KEY:
		if (static_key)
			ret = FUNC2(il);
		else
			ret = FUNC1(il, sta_id);
		FUNC0("disable hwcrypto key\n");
		break;
	default:
		ret = -EINVAL;
	}

	FUNC0("leave ret %d\n", ret);
	FUNC9(&il->mutex);

	return ret;
}
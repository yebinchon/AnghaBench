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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {scalar_t__* bssid_addr; } ;
struct iwl_rxon_context {int /*<<< orphan*/  key_mapping_keys; TYPE_1__ active; int /*<<< orphan*/  vif; } ;
struct iwl_priv {int /*<<< orphan*/  ucode_key_table; int /*<<< orphan*/  mutex; } ;
struct ieee80211_sta {scalar_t__* addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  iv32; } ;
struct ieee80211_key_seq {TYPE_2__ tkip; } ;
struct ieee80211_key_conf {scalar_t__ hw_key_idx; int cipher; int /*<<< orphan*/  keyidx; int /*<<< orphan*/  keylen; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,int) ; 
 scalar_t__ IWL_INVALID_STATION ; 
 scalar_t__ WEP_INVALID_OFFSET ; 
#define  WLAN_CIPHER_SUITE_CCMP 131 
#define  WLAN_CIPHER_SUITE_TKIP 130 
#define  WLAN_CIPHER_SUITE_WEP104 129 
#define  WLAN_CIPHER_SUITE_WEP40 128 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_key_conf*,int /*<<< orphan*/ ,struct ieee80211_key_seq*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_key_conf*,scalar_t__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct iwl_priv*) ; 
 scalar_t__ FUNC6 (struct iwl_priv*,int /*<<< orphan*/ ,struct ieee80211_sta*) ; 
 int FUNC7 (struct iwl_priv*,struct ieee80211_key_conf*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct iwl_priv *priv,
			struct iwl_rxon_context *ctx,
			struct ieee80211_key_conf *keyconf,
			struct ieee80211_sta *sta)
{
	struct ieee80211_key_seq seq;
	u16 p1k[5];
	int ret;
	u8 sta_id = FUNC6(priv, ctx->vif, sta);
	const u8 *addr;

	if (sta_id == IWL_INVALID_STATION)
		return -EINVAL;

	FUNC8(&priv->mutex);

	keyconf->hw_key_idx = FUNC5(priv);
	if (keyconf->hw_key_idx == WEP_INVALID_OFFSET)
		return -ENOSPC;

	ctx->key_mapping_keys++;

	switch (keyconf->cipher) {
	case WLAN_CIPHER_SUITE_TKIP:
		if (sta)
			addr = sta->addr;
		else /* station mode case only */
			addr = ctx->active.bssid_addr;

		/* pre-fill phase 1 key into device cache */
		FUNC3(keyconf, 0, &seq);
		FUNC4(keyconf, addr, seq.tkip.iv32, p1k);
		ret = FUNC7(priv, keyconf, sta_id,
					  seq.tkip.iv32, p1k, 0);
		break;
	case WLAN_CIPHER_SUITE_CCMP:
	case WLAN_CIPHER_SUITE_WEP40:
	case WLAN_CIPHER_SUITE_WEP104:
		ret = FUNC7(priv, keyconf, sta_id,
					  0, NULL, 0);
		break;
	default:
		FUNC1(priv, "Unknown cipher %x\n", keyconf->cipher);
		ret = -EINVAL;
	}

	if (ret) {
		ctx->key_mapping_keys--;
		FUNC2(keyconf->hw_key_idx, &priv->ucode_key_table);
	}

	FUNC0(priv, "Set dynamic key: cipher=%x len=%d idx=%d sta=%pM ret=%d\n",
		      keyconf->cipher, keyconf->keylen, keyconf->keyidx,
		      sta ? sta->addr : NULL, ret);

	return ret;
}
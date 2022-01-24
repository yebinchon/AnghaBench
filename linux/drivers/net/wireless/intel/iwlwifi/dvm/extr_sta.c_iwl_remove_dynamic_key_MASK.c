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
typedef  size_t u8 ;
struct iwl_rxon_context {int /*<<< orphan*/  key_mapping_keys; int /*<<< orphan*/  vif; } ;
struct iwl_priv {int /*<<< orphan*/  ucode_key_table; int /*<<< orphan*/  mutex; int /*<<< orphan*/  sta_lock; TYPE_1__* stations; } ;
struct TYPE_6__ {int /*<<< orphan*/  modify_mask; } ;
struct TYPE_5__ {int key_flags; int /*<<< orphan*/  key_offset; } ;
struct iwl_addsta_cmd {int /*<<< orphan*/  mode; TYPE_3__ sta; TYPE_2__ key; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int keyidx; int flags; int /*<<< orphan*/  hw_key_idx; } ;
typedef  int /*<<< orphan*/  sta_cmd ;
typedef  int __le16 ;
struct TYPE_4__ {int used; int /*<<< orphan*/  sta; } ;

/* Variables and functions */
 int ENOENT ; 
 int IEEE80211_KEY_FLAG_PAIRWISE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,int /*<<< orphan*/ ) ; 
 size_t IWL_INVALID_STATION ; 
 int IWL_STA_UCODE_ACTIVE ; 
 int /*<<< orphan*/  STA_CONTROL_MODIFY_MSK ; 
 int STA_KEY_FLG_INVALID ; 
 int STA_KEY_FLG_KEYID_POS ; 
 int STA_KEY_FLG_MAP_KEY_MSK ; 
 int STA_KEY_FLG_NO_ENC ; 
 int STA_KEY_MULTICAST_MSK ; 
 int /*<<< orphan*/  STA_MODIFY_KEY_MASK ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct iwl_priv*,struct iwl_addsta_cmd*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (struct iwl_priv*,int /*<<< orphan*/ ,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_addsta_cmd*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct iwl_priv *priv,
			   struct iwl_rxon_context *ctx,
			   struct ieee80211_key_conf *keyconf,
			   struct ieee80211_sta *sta)
{
	struct iwl_addsta_cmd sta_cmd;
	u8 sta_id = FUNC4(priv, ctx->vif, sta);
	__le16 key_flags;

	/* if station isn't there, neither is the key */
	if (sta_id == IWL_INVALID_STATION)
		return -ENOENT;

	FUNC7(&priv->sta_lock);
	FUNC6(&sta_cmd, &priv->stations[sta_id].sta, sizeof(sta_cmd));
	if (!(priv->stations[sta_id].used & IWL_STA_UCODE_ACTIVE))
		sta_id = IWL_INVALID_STATION;
	FUNC8(&priv->sta_lock);

	if (sta_id == IWL_INVALID_STATION)
		return 0;

	FUNC5(&priv->mutex);

	ctx->key_mapping_keys--;

	FUNC0(priv, "Remove dynamic key: idx=%d sta=%d\n",
		      keyconf->keyidx, sta_id);

	if (!FUNC9(keyconf->hw_key_idx, &priv->ucode_key_table))
		FUNC1(priv, "offset %d not used in uCode key table.\n",
			keyconf->hw_key_idx);

	key_flags = FUNC2(keyconf->keyidx << STA_KEY_FLG_KEYID_POS);
	key_flags |= STA_KEY_FLG_MAP_KEY_MSK | STA_KEY_FLG_NO_ENC |
		     STA_KEY_FLG_INVALID;

	if (!(keyconf->flags & IEEE80211_KEY_FLAG_PAIRWISE))
		key_flags |= STA_KEY_MULTICAST_MSK;

	sta_cmd.key.key_flags = key_flags;
	sta_cmd.key.key_offset = keyconf->hw_key_idx;
	sta_cmd.sta.modify_mask = STA_MODIFY_KEY_MASK;
	sta_cmd.mode = STA_CONTROL_MODIFY_MSK;

	return FUNC3(priv, &sta_cmd, 0);
}
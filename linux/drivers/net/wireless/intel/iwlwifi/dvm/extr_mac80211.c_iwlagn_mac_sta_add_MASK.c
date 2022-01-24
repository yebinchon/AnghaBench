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
typedef  int /*<<< orphan*/  u8 ;
struct iwl_vif_priv {int /*<<< orphan*/  ctx; } ;
struct iwl_station_priv {int client; int /*<<< orphan*/  sta_id; int /*<<< orphan*/  pending_frames; } ;
struct iwl_priv {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ drv_priv; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IWL_INVALID_STATION ; 
 struct iwl_priv* FUNC2 (struct ieee80211_hw*) ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ieee80211_sta*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw,
			      struct ieee80211_vif *vif,
			      struct ieee80211_sta *sta)
{
	struct iwl_priv *priv = FUNC2(hw);
	struct iwl_station_priv *sta_priv = (void *)sta->drv_priv;
	struct iwl_vif_priv *vif_priv = (void *)vif->drv_priv;
	bool is_ap = vif->type == NL80211_IFTYPE_STATION;
	int ret;
	u8 sta_id;

	FUNC0(priv, "proceeding to add station %pM\n",
			sta->addr);
	sta_priv->sta_id = IWL_INVALID_STATION;

	FUNC3(&sta_priv->pending_frames, 0);
	if (vif->type == NL80211_IFTYPE_AP)
		sta_priv->client = true;

	ret = FUNC4(priv, vif_priv->ctx, sta->addr,
				     is_ap, sta, &sta_id);
	if (ret) {
		FUNC1(priv, "Unable to add station %pM (%d)\n",
			sta->addr, ret);
		/* Should we return success if return code is EEXIST ? */
		return ret;
	}

	sta_priv->sta_id = sta_id;

	return 0;
}
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
struct iwl_station_priv {int /*<<< orphan*/  sta_id; } ;
struct iwl_priv {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,int /*<<< orphan*/ ) ; 
 struct iwl_priv* FUNC2 (struct ieee80211_hw*) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw,
				 struct ieee80211_vif *vif,
				 struct ieee80211_sta *sta)
{
	struct iwl_priv *priv = FUNC2(hw);
	struct iwl_station_priv *sta_priv = (void *)sta->drv_priv;
	int ret;

	FUNC0(priv, "proceeding to remove station %pM\n", sta->addr);

	if (vif->type == NL80211_IFTYPE_STATION) {
		/*
		 * Station will be removed from device when the RXON
		 * is set to unassociated -- just deactivate it here
		 * to avoid re-programming it.
		 */
		ret = 0;
		FUNC3(priv, sta_priv->sta_id, sta->addr);
	} else {
		ret = FUNC4(priv, sta_priv->sta_id, sta->addr);
		if (ret)
			FUNC1(priv,
				"Error removing station %pM\n", sta->addr);
	}
	return ret;
}
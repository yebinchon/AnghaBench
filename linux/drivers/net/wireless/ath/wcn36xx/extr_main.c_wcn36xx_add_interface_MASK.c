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
struct wcn36xx_vif {int /*<<< orphan*/  list; int /*<<< orphan*/  sta_list; int /*<<< orphan*/  bss_index; } ;
struct wcn36xx {int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  vif_list; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  WCN36XX_DBG_MAC ; 
 int /*<<< orphan*/  WCN36XX_HAL_BSS_INVALID_IDX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct ieee80211_vif*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wcn36xx*,struct ieee80211_vif*) ; 
 struct wcn36xx_vif* FUNC6 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_hw *hw,
				 struct ieee80211_vif *vif)
{
	struct wcn36xx *wcn = hw->priv;
	struct wcn36xx_vif *vif_priv = FUNC6(vif);

	FUNC4(WCN36XX_DBG_MAC, "mac add interface vif %p type %d\n",
		    vif, vif->type);

	if (!(NL80211_IFTYPE_STATION == vif->type ||
	      NL80211_IFTYPE_AP == vif->type ||
	      NL80211_IFTYPE_ADHOC == vif->type ||
	      NL80211_IFTYPE_MESH_POINT == vif->type)) {
		FUNC7("Unsupported interface type requested: %d\n",
			     vif->type);
		return -EOPNOTSUPP;
	}

	FUNC2(&wcn->conf_mutex);

	vif_priv->bss_index = WCN36XX_HAL_BSS_INVALID_IDX;
	FUNC0(&vif_priv->sta_list);
	FUNC1(&vif_priv->list, &wcn->vif_list);
	FUNC5(wcn, vif);

	FUNC3(&wcn->conf_mutex);

	return 0;
}
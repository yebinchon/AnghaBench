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
struct wcn36xx_vif {int /*<<< orphan*/  sta_list; } ;
struct wcn36xx_sta {int /*<<< orphan*/  aid; int /*<<< orphan*/  list; struct wcn36xx_vif* vif; int /*<<< orphan*/  ampdu_lock; } ;
struct wcn36xx {int /*<<< orphan*/  conf_mutex; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int /*<<< orphan*/  aid; int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC0 (struct wcn36xx*) ; 
 int /*<<< orphan*/  WCN36XX_DBG_MAC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wcn36xx*,struct ieee80211_vif*,struct ieee80211_sta*) ; 
 struct wcn36xx_sta* FUNC7 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 struct wcn36xx_vif* FUNC9 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC10(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
			   struct ieee80211_sta *sta)
{
	struct wcn36xx *wcn = hw->priv;
	struct wcn36xx_vif *vif_priv = FUNC9(vif);
	struct wcn36xx_sta *sta_priv = FUNC7(sta);
	FUNC5(WCN36XX_DBG_MAC, "mac sta add vif %p sta %pM\n",
		    vif, sta->addr);

	FUNC2(&wcn->conf_mutex);

	FUNC4(&sta_priv->ampdu_lock);
	sta_priv->vif = vif_priv;
	FUNC1(&sta_priv->list, &vif_priv->sta_list);

	/*
	 * For STA mode HW will be configured on BSS_CHANGED_ASSOC because
	 * at this stage AID is not available yet.
	 */
	if (NL80211_IFTYPE_STATION != vif->type) {
		FUNC8(sta, FUNC0(wcn));
		sta_priv->aid = sta->aid;
		FUNC6(wcn, vif, sta);
	}

	FUNC3(&wcn->conf_mutex);

	return 0;
}
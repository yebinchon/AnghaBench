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
struct wcn36xx_sta {int /*<<< orphan*/ * vif; int /*<<< orphan*/  sta_index; int /*<<< orphan*/  list; } ;
struct wcn36xx {int /*<<< orphan*/  conf_mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  WCN36XX_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct ieee80211_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wcn36xx*,int /*<<< orphan*/ ) ; 
 struct wcn36xx_sta* FUNC5 (struct ieee80211_sta*) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw,
			      struct ieee80211_vif *vif,
			      struct ieee80211_sta *sta)
{
	struct wcn36xx *wcn = hw->priv;
	struct wcn36xx_sta *sta_priv = FUNC5(sta);

	FUNC3(WCN36XX_DBG_MAC, "mac sta remove vif %p sta %pM index %d\n",
		    vif, sta->addr, sta_priv->sta_index);

	FUNC1(&wcn->conf_mutex);

	FUNC0(&sta_priv->list);
	FUNC4(wcn, sta_priv->sta_index);
	sta_priv->vif = NULL;

	FUNC2(&wcn->conf_mutex);

	return 0;
}
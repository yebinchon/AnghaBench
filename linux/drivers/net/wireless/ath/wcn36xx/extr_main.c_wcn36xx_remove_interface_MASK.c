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
struct wcn36xx_vif {int /*<<< orphan*/  list; } ;
struct wcn36xx {int /*<<< orphan*/  conf_mutex; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  WCN36XX_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct wcn36xx*,int /*<<< orphan*/ ) ; 
 struct wcn36xx_vif* FUNC5 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw,
				     struct ieee80211_vif *vif)
{
	struct wcn36xx *wcn = hw->priv;
	struct wcn36xx_vif *vif_priv = FUNC5(vif);
	FUNC3(WCN36XX_DBG_MAC, "mac remove interface vif %p\n", vif);

	FUNC1(&wcn->conf_mutex);

	FUNC0(&vif_priv->list);
	FUNC4(wcn, vif->addr);

	FUNC2(&wcn->conf_mutex);
}
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
struct wcn36xx_vif {scalar_t__ pw_state; } ;
struct wcn36xx {int dummy; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int EALREADY ; 
 scalar_t__ WCN36XX_BMPS ; 
 int /*<<< orphan*/  WCN36XX_DBG_PMC ; 
 scalar_t__ WCN36XX_FULL_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wcn36xx*,struct ieee80211_vif*) ; 
 struct wcn36xx_vif* FUNC2 (struct ieee80211_vif*) ; 

int FUNC3(struct wcn36xx *wcn,
				struct ieee80211_vif *vif)
{
	struct wcn36xx_vif *vif_priv = FUNC2(vif);

	if (WCN36XX_BMPS != vif_priv->pw_state) {
		/* Unbalanced call or last BMPS enter failed */
		FUNC0(WCN36XX_DBG_PMC,
			    "Not in BMPS mode, no need to exit\n");
		return -EALREADY;
	}
	FUNC1(wcn, vif);
	vif_priv->pw_state = WCN36XX_FULL_POWER;
	return 0;
}
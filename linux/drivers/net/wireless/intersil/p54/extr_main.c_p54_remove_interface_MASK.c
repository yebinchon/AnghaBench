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
struct p54_common {int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  bssid; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  mode; int /*<<< orphan*/  beacon_comp; int /*<<< orphan*/  beacon_req_id; int /*<<< orphan*/ * vif; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct p54_common* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct p54_common*) ; 
 int /*<<< orphan*/  FUNC5 (struct p54_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *dev,
				 struct ieee80211_vif *vif)
{
	struct p54_common *priv = dev->priv;

	FUNC2(&priv->conf_mutex);
	priv->vif = NULL;

	/*
	 * LMAC API 3.2.2 states that any active beacon template must be
	 * canceled by the driver before attempting a mode transition.
	 */
	if (FUNC1(priv->beacon_req_id) != 0) {
		FUNC5(priv, priv->beacon_req_id);
		FUNC6(&priv->beacon_comp, HZ);
	}
	priv->mode = NL80211_IFTYPE_MONITOR;
	FUNC0(priv->mac_addr);
	FUNC0(priv->bssid);
	FUNC4(priv);
	FUNC3(&priv->conf_mutex);
}
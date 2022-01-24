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
struct iwl_priv {scalar_t__ bt_traffic_load; } ;
struct iwl_lq_sta {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ IWL_BT_COEX_TRAFFIC_LOAD_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ieee80211_sta*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_lq_sta*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iwl_priv *priv,
				      struct iwl_lq_sta *lq_data, u8 tid,
				      struct ieee80211_sta *sta)
{
	int ret = -EAGAIN;

	/*
	 * Don't create TX aggregation sessions when in high
	 * BT traffic, as they would just be disrupted by BT.
	 */
	if (priv->bt_traffic_load >= IWL_BT_COEX_TRAFFIC_LOAD_HIGH) {
		FUNC0(priv,
			       "BT traffic (%d), no aggregation allowed\n",
			       priv->bt_traffic_load);
		return ret;
	}

	FUNC5(lq_data, tid);

	FUNC1(priv, "Starting Tx agg: STA: %pM tid: %d\n",
			sta->addr, tid);
	ret = FUNC3(sta, tid, 5000);
	if (ret == -EAGAIN) {
		/*
		 * driver and mac80211 is out of sync
		 * this might be cause by reloading firmware
		 * stop the tx ba session here
		 */
		FUNC2(priv, "Fail start Tx agg on tid: %d\n",
			tid);
		FUNC4(sta, tid);
	}
	return ret;
}
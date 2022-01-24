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
struct iwl_station_priv {int asleep; int /*<<< orphan*/  client; int /*<<< orphan*/  pending_frames; } ;
struct iwl_priv {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum sta_notify_cmd { ____Placeholder_sta_notify_cmd } sta_notify_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int IWL_INVALID_STATION ; 
 struct iwl_priv* FUNC1 (struct ieee80211_hw*) ; 
#define  STA_NOTIFY_AWAKE 129 
#define  STA_NOTIFY_SLEEP 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,struct ieee80211_sta*,int) ; 
 int FUNC5 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_priv*,int) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw,
				  struct ieee80211_vif *vif,
				  enum sta_notify_cmd cmd,
				  struct ieee80211_sta *sta)
{
	struct iwl_priv *priv = FUNC1(hw);
	struct iwl_station_priv *sta_priv = (void *)sta->drv_priv;
	int sta_id;

	FUNC0(priv, "enter\n");

	switch (cmd) {
	case STA_NOTIFY_SLEEP:
		FUNC2(!sta_priv->client);
		sta_priv->asleep = true;
		if (FUNC3(&sta_priv->pending_frames) > 0)
			FUNC4(hw, sta, true);
		break;
	case STA_NOTIFY_AWAKE:
		FUNC2(!sta_priv->client);
		if (!sta_priv->asleep)
			break;
		sta_priv->asleep = false;
		sta_id = FUNC5(sta);
		if (sta_id != IWL_INVALID_STATION)
			FUNC6(priv, sta_id);
		break;
	default:
		break;
	}
	FUNC0(priv, "leave\n");
}
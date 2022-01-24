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
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
struct carl9170_sta_info {int sleeping; int /*<<< orphan*/  pending_frames; } ;
typedef  enum sta_notify_cmd { ____Placeholder_sta_notify_cmd } sta_notify_cmd ;

/* Variables and functions */
#define  STA_NOTIFY_AWAKE 129 
#define  STA_NOTIFY_SLEEP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct ieee80211_sta*,int) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif,
				   enum sta_notify_cmd cmd,
				   struct ieee80211_sta *sta)
{
	struct carl9170_sta_info *sta_info = (void *) sta->drv_priv;

	switch (cmd) {
	case STA_NOTIFY_SLEEP:
		sta_info->sleeping = true;
		if (FUNC0(&sta_info->pending_frames))
			FUNC1(hw, sta, true);
		break;

	case STA_NOTIFY_AWAKE:
		sta_info->sleeping = false;
		break;
	}
}
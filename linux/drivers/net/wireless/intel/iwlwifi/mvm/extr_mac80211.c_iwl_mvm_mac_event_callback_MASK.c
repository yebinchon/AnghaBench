#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tid; int /*<<< orphan*/  sta; } ;
struct TYPE_4__ {TYPE_1__ ba; } ;
struct ieee80211_event {int type; TYPE_2__ u; } ;

/* Variables and functions */
#define  BAR_RX_EVENT 130 
#define  BA_FRAME_TIMEOUT 129 
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
#define  MLME_EVENT 128 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_event const*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_event const*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
				       struct ieee80211_vif *vif,
				       const struct ieee80211_event *event)
{
	struct iwl_mvm *mvm = FUNC0(hw);

	switch (event->type) {
	case MLME_EVENT:
		FUNC3(mvm, vif, event);
		break;
	case BAR_RX_EVENT:
		FUNC1(mvm, vif, event);
		break;
	case BA_FRAME_TIMEOUT:
		FUNC2(mvm, vif, event->u.ba.sta,
						     event->u.ba.tid);
		break;
	default:
		break;
	}
}
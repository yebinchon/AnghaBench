#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm {TYPE_1__ snif_sta; int /*<<< orphan*/  snif_queue; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_MAX_TID_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	int ret;

	FUNC3(&mvm->mutex);

	FUNC1(mvm, NULL, mvm->snif_queue, IWL_MAX_TID_COUNT, 0);
	ret = FUNC2(mvm, mvm->snif_sta.sta_id);
	if (ret)
		FUNC0(mvm, "Failed sending remove station\n");

	return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {TYPE_1__ pers; } ;
struct TYPE_6__ {TYPE_2__ rs_drv; } ;
struct iwl_mvm_sta {TYPE_3__ lq_sta; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iwl_mvm*) ; 
 struct iwl_mvm_sta* FUNC1 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct ieee80211_sta*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct iwl_mvm *mvm, struct ieee80211_sta *sta,
			  enum nl80211_band band, bool update)
{
	if (FUNC0(mvm)) {
		FUNC3(mvm, sta, band, update);
	} else {
		struct iwl_mvm_sta *mvmsta = FUNC1(sta);

		FUNC4(&mvmsta->lq_sta.rs_drv.pers.lock);
		FUNC2(mvm, sta, band);
		FUNC5(&mvmsta->lq_sta.rs_drv.pers.lock);
	}
}
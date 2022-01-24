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
struct iwl_mvm {TYPE_1__* hw; } ;
struct ieee80211_regdomain {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_regdomain*) ; 
 struct ieee80211_regdomain* FUNC1 (struct iwl_mvm*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_regdomain*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ieee80211_regdomain*) ; 

void FUNC5(struct iwl_mvm *mvm)
{
	bool changed;
	struct ieee80211_regdomain *regd;

	if (!FUNC2(mvm))
		return;

	regd = FUNC1(mvm, &changed);
	if (!FUNC0(regd)) {
		/* only update the regulatory core if changed */
		if (changed)
			FUNC4(mvm->hw->wiphy, regd);

		FUNC3(regd);
	}
}
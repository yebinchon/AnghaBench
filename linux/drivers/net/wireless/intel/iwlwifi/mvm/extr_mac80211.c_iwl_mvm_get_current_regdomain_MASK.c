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
 int /*<<< orphan*/  MCC_SOURCE_GET_CURRENT ; 
 int /*<<< orphan*/  MCC_SOURCE_OLD_FW ; 
 struct ieee80211_regdomain* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (struct iwl_mvm*) ; 

struct ieee80211_regdomain *FUNC2(struct iwl_mvm *mvm,
							  bool *changed)
{
	return FUNC0(mvm->hw->wiphy, "ZZ",
				     FUNC1(mvm) ?
				     MCC_SOURCE_GET_CURRENT :
				     MCC_SOURCE_OLD_FW, changed);
}
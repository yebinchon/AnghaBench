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
typedef  int u32 ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int dtim_period; int beacon_int; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct ieee80211_vif*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ieee80211_hw *hw,
					   struct ieee80211_vif *vif)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	u32 duration = 2 * vif->bss_conf.dtim_period * vif->bss_conf.beacon_int;

	FUNC2(&mvm->mutex);
	/* Protect the session to hear the TDLS setup response on the channel */
	FUNC1(mvm, vif, duration, duration, 100, true);
	FUNC3(&mvm->mutex);
}
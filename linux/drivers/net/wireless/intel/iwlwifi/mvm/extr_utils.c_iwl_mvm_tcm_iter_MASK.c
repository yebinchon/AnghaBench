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
typedef  int /*<<< orphan*/  u8 ;
struct iwl_mvm_vif {int low_latency; size_t id; } ;
struct iwl_mvm_tcm_iter_data {int any_sent; struct iwl_mvm* mvm; } ;
struct TYPE_3__ {int* low_latency; int /*<<< orphan*/ * change; } ;
struct TYPE_4__ {TYPE_1__ result; } ;
struct iwl_mvm {TYPE_2__ tcm; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int LOW_LATENCY_TRAFFIC ; 
 size_t NUM_MAC_INDEX_DRIVER ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,struct ieee80211_vif*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,int,int /*<<< orphan*/ *) ; 
 struct iwl_mvm_vif* FUNC2 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC3(void *_data, u8 *mac, struct ieee80211_vif *vif)
{
	struct iwl_mvm_tcm_iter_data *data = _data;
	struct iwl_mvm *mvm = data->mvm;
	struct iwl_mvm_vif *mvmvif = FUNC2(vif);
	bool low_latency, prev = mvmvif->low_latency & LOW_LATENCY_TRAFFIC;

	if (mvmvif->id >= NUM_MAC_INDEX_DRIVER)
		return;

	low_latency = mvm->tcm.result.low_latency[mvmvif->id];

	if (!mvm->tcm.result.change[mvmvif->id] &&
	    prev == low_latency) {
		FUNC1(mvm, false, NULL);
		return;
	}

	if (prev != low_latency) {
		/* this sends traffic load and updates quota as well */
		FUNC0(mvm, vif, low_latency,
					   LOW_LATENCY_TRAFFIC);
	} else {
		FUNC1(mvm, false, NULL);
	}

	data->any_sent = true;
}
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
typedef  size_t u8 ;
struct iwl_mvm_tid_data {scalar_t__ state; scalar_t__ tx_count_last; } ;
struct iwl_mvm_sta {scalar_t__ sta_state; struct iwl_mvm_tid_data* tid_data; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int tx_agg_tid_en; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 scalar_t__ IEEE80211_STA_AUTHORIZED ; 
 scalar_t__ IWL_AGG_OFF ; 
 scalar_t__ IWL_AGG_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,size_t,size_t) ; 
 size_t IWL_MAX_TID_COUNT ; 
 scalar_t__ IWL_MVM_RS_AGG_START_THRESHOLD ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct iwl_mvm*,struct iwl_lq_sta*,size_t,struct ieee80211_sta*) ; 

__attribute__((used)) static void FUNC5(struct iwl_mvm *mvm, struct iwl_mvm_sta *mvmsta,
			      u8 tid, struct iwl_lq_sta *lq_sta,
			      struct ieee80211_sta *sta)
{
	struct iwl_mvm_tid_data *tid_data;

	/*
	 * In AP mode, tid can be equal to IWL_MAX_TID_COUNT
	 * when the frame is not QoS
	 */
	if (FUNC3(tid > IWL_MAX_TID_COUNT)) {
		FUNC2(mvm, "tid exceeds max TID count: %d/%d\n",
			tid, IWL_MAX_TID_COUNT);
		return;
	} else if (tid == IWL_MAX_TID_COUNT) {
		return;
	}

	tid_data = &mvmsta->tid_data[tid];
	if (mvmsta->sta_state >= IEEE80211_STA_AUTHORIZED &&
	    tid_data->state == IWL_AGG_OFF &&
	    (lq_sta->tx_agg_tid_en & FUNC0(tid)) &&
	    tid_data->tx_count_last >= IWL_MVM_RS_AGG_START_THRESHOLD) {
		FUNC1(mvm, "try to aggregate tid %d\n", tid);
		if (FUNC4(mvm, lq_sta, tid, sta) == 0)
			tid_data->state = IWL_AGG_QUEUED;
	}
}
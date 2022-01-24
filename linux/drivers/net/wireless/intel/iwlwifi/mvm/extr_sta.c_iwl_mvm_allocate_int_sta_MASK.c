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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_mvm_int_sta {size_t sta_id; int type; int /*<<< orphan*/  tfd_queue_msk; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/  status; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
typedef  enum iwl_sta_type { ____Placeholder_iwl_sta_type } iwl_sta_type ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t IWL_MVM_INVALID_STA ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 scalar_t__ FUNC1 (int) ; 
 size_t FUNC2 (struct iwl_mvm*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct iwl_mvm *mvm,
			     struct iwl_mvm_int_sta *sta,
			     u32 qmask, enum nl80211_iftype iftype,
			     enum iwl_sta_type type)
{
	if (!FUNC4(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status) ||
	    sta->sta_id == IWL_MVM_INVALID_STA) {
		sta->sta_id = FUNC2(mvm, iftype);
		if (FUNC1(sta->sta_id == IWL_MVM_INVALID_STA))
			return -ENOSPC;
	}

	sta->tfd_queue_msk = qmask;
	sta->type = type;

	/* put a non-NULL value so iterating over the stations won't stop */
	FUNC3(mvm->fw_id_to_mac_id[sta->sta_id], FUNC0(-EINVAL));
	return 0;
}
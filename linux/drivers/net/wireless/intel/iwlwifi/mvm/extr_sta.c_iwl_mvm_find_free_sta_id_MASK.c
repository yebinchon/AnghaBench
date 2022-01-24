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
typedef  int u32 ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/  status; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int IWL_MVM_INVALID_STA ; 
 int IWL_MVM_STATION_COUNT ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 int NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct iwl_mvm *mvm,
				    enum nl80211_iftype iftype)
{
	int sta_id;
	u32 reserved_ids = 0;

	FUNC2(IWL_MVM_STATION_COUNT > 32);
	FUNC3(FUNC7(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status));

	FUNC4(&mvm->mutex);

	/* d0i3/d3 assumes the AP's sta_id (of sta vif) is 0. reserve it. */
	if (iftype != NL80211_IFTYPE_STATION)
		reserved_ids = FUNC1(0);

	/* Don't take rcu_read_lock() since we are protected by mvm->mutex */
	for (sta_id = 0; sta_id < FUNC0(mvm->fw_id_to_mac_id); sta_id++) {
		if (FUNC1(sta_id) & reserved_ids)
			continue;

		if (!FUNC6(mvm->fw_id_to_mac_id[sta_id],
					       FUNC5(&mvm->mutex)))
			return sta_id;
	}
	return IWL_MVM_INVALID_STA;
}
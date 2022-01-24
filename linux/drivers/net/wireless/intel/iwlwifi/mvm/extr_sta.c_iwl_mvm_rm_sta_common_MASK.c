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
struct iwl_mvm_rm_sta_cmd {size_t sta_id; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct ieee80211_sta {int dummy; } ;
typedef  int /*<<< orphan*/  rm_sta_cmd ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  REMOVE_STA ; 
 int FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_mvm_rm_sta_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct iwl_mvm *mvm, u8 sta_id)
{
	struct ieee80211_sta *sta;
	struct iwl_mvm_rm_sta_cmd rm_sta_cmd = {
		.sta_id = sta_id,
	};
	int ret;

	sta = FUNC3(mvm->fw_id_to_mac_id[sta_id],
					FUNC2(&mvm->mutex));

	/* Note: internal stations are marked as error values */
	if (!sta) {
		FUNC0(mvm, "Invalid station id\n");
		return -EINVAL;
	}

	ret = FUNC1(mvm, REMOVE_STA, 0,
				   sizeof(rm_sta_cmd), &rm_sta_cmd);
	if (ret) {
		FUNC0(mvm, "Failed to remove station. Id=%d\n", sta_id);
		return ret;
	}

	return 0;
}
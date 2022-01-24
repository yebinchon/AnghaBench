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
typedef  scalar_t__ u64 ;
struct iwl_mvm {int /*<<< orphan*/  mutex; struct iwl_mcast_filter_cmd* mcast_filter_cmd; } ;
struct iwl_mcast_filter_cmd {int pass_all; scalar_t__ count; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 unsigned int FIF_ALLMULTI ; 
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mcast_filter_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
				     unsigned int changed_flags,
				     unsigned int *total_flags,
				     u64 multicast)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	struct iwl_mcast_filter_cmd *cmd = (void *)(unsigned long)multicast;

	FUNC3(&mvm->mutex);

	/* replace previous configuration */
	FUNC2(mvm->mcast_filter_cmd);
	mvm->mcast_filter_cmd = cmd;

	if (!cmd)
		goto out;

	if (changed_flags & FIF_ALLMULTI)
		cmd->pass_all = !!(*total_flags & FIF_ALLMULTI);

	if (cmd->pass_all)
		cmd->count = 0;

	FUNC1(mvm);
out:
	FUNC4(&mvm->mutex);
	*total_flags = 0;
}
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
struct iwl_mvm_mc_iter_data {struct iwl_mvm* mvm; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; int /*<<< orphan*/  mcast_filter_cmd; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm_mc_iter_data*) ; 
 int /*<<< orphan*/  iwl_mvm_mc_iface_iterator ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct iwl_mvm *mvm)
{
	struct iwl_mvm_mc_iter_data iter_data = {
		.mvm = mvm,
	};

	FUNC2(&mvm->mutex);

	if (FUNC0(!mvm->mcast_filter_cmd))
		return;

	FUNC1(
		mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
		iwl_mvm_mc_iface_iterator, &iter_data);
}
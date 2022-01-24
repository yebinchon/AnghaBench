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
typedef  scalar_t__ u8 ;
struct iwl_mvm_vif {struct iwl_mvm* mvm; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LOW_LATENCY_DEBUGFS_FORCE ; 
 int /*<<< orphan*/  LOW_LATENCY_DEBUGFS_FORCE_ENABLE ; 
 scalar_t__ LOW_LATENCY_FORCE_ON ; 
 scalar_t__ LOW_LATENCY_FORCE_UNSET ; 
 scalar_t__ NUM_LOW_LATENCY_FORCE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,struct ieee80211_vif*,int,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_vif* FUNC1 (struct ieee80211_vif*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC5(struct ieee80211_vif *vif, char *buf,
				  size_t count, loff_t *ppos)
{
	struct iwl_mvm_vif *mvmvif = FUNC1(vif);
	struct iwl_mvm *mvm = mvmvif->mvm;
	u8 value;
	int ret;

	ret = FUNC2(buf, 0, &value);
	if (ret)
		return ret;

	if (value > NUM_LOW_LATENCY_FORCE)
		return -EINVAL;

	FUNC3(&mvm->mutex);
	if (value == LOW_LATENCY_FORCE_UNSET) {
		FUNC0(mvm, vif, false,
					   LOW_LATENCY_DEBUGFS_FORCE);
		FUNC0(mvm, vif, false,
					   LOW_LATENCY_DEBUGFS_FORCE_ENABLE);
	} else {
		FUNC0(mvm, vif,
					   value == LOW_LATENCY_FORCE_ON,
					   LOW_LATENCY_DEBUGFS_FORCE);
		FUNC0(mvm, vif, true,
					   LOW_LATENCY_DEBUGFS_FORCE_ENABLE);
	}
	FUNC4(&mvm->mutex);
	return count;
}
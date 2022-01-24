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
typedef  int u16 ;
struct iwl_mvm_vif {int dbgfs_quota_min; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/  hw; } ;
struct ieee80211_vif {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  iwl_dbgfs_quota_check ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,int,int /*<<< orphan*/ *) ; 
 struct iwl_mvm_vif* FUNC2 (struct ieee80211_vif*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct ieee80211_vif *vif, char *buf,
					 size_t count, loff_t *ppos)
{
	struct iwl_mvm_vif *mvmvif = FUNC2(vif);
	struct iwl_mvm *mvm = mvmvif->mvm;
	u16 value;
	int ret;

	ret = FUNC3(buf, 0, &value);
	if (ret)
		return ret;

	if (value > 95)
		return -EINVAL;

	FUNC4(&mvm->mutex);

	mvmvif->dbgfs_quota_min = 0;
	FUNC0(mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
				     iwl_dbgfs_quota_check, &ret);
	if (ret == 0) {
		mvmvif->dbgfs_quota_min = value;
		FUNC1(mvm, false, NULL);
	}
	FUNC5(&mvm->mutex);

	return ret ?: count;
}
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
struct iwl_mvm_vif {int /*<<< orphan*/  uapsd_misbehaving_bssid; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 size_t EINVAL ; 
 struct iwl_mvm_vif* FUNC0 (struct ieee80211_vif*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct ieee80211_vif *vif,
						 char *buf, size_t count,
						 loff_t *ppos)
{
	struct iwl_mvm_vif *mvmvif = FUNC0(vif);
	struct iwl_mvm *mvm = mvmvif->mvm;
	bool ret;

	FUNC2(&mvm->mutex);
	ret = FUNC1(buf, mvmvif->uapsd_misbehaving_bssid);
	FUNC3(&mvm->mutex);

	return ret ? count : -EINVAL;
}
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
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct iwl_mvm*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct iwl_mvm *mvm,
		      struct ieee80211_vif *vif,
		      u8 sta_id)
{
	int ret = FUNC1(mvm, sta_id);

	FUNC2(&mvm->mutex);

	FUNC0(mvm->fw_id_to_mac_id[sta_id], NULL);
	return ret;
}
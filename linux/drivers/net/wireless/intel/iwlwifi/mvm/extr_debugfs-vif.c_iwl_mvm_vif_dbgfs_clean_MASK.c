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
struct iwl_mvm_vif {int /*<<< orphan*/ * dbgfs_dir; int /*<<< orphan*/ * dbgfs_slink; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct iwl_mvm_vif* FUNC2 (struct ieee80211_vif*) ; 

void FUNC3(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC2(vif);

	FUNC0(mvmvif->dbgfs_slink);
	mvmvif->dbgfs_slink = NULL;

	FUNC1(mvmvif->dbgfs_dir);
	mvmvif->dbgfs_dir = NULL;
}
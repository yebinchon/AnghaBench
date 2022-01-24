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
typedef  int /*<<< orphan*/  u8 ;
struct iwl_mvm_phy_ctxt {int /*<<< orphan*/  channel; scalar_t__ ref; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/  status; } ;
struct cfg80211_chan_def {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_CTXT_ACTION_ADD ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*,struct cfg80211_chan_def*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct iwl_mvm *mvm, struct iwl_mvm_phy_ctxt *ctxt,
			 struct cfg80211_chan_def *chandef,
			 u8 chains_static, u8 chains_dynamic)
{
	FUNC0(!FUNC3(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status) &&
		ctxt->ref);
	FUNC2(&mvm->mutex);

	ctxt->channel = chandef->chan;

	return FUNC1(mvm, ctxt, chandef,
				      chains_static, chains_dynamic,
				      FW_CTXT_ACTION_ADD, 0);
}
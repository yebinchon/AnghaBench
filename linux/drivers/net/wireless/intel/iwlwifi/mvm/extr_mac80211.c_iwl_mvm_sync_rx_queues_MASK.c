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
struct iwl_mvm_internal_rxq_notif {int sync; int /*<<< orphan*/  type; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_MVM_RXQ_EMPTY ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct iwl_mvm_internal_rxq_notif*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	struct iwl_mvm_internal_rxq_notif data = {
		.type = IWL_MVM_RXQ_EMPTY,
		.sync = 1,
	};

	FUNC2(&mvm->mutex);
	FUNC1(mvm, &data, sizeof(data));
	FUNC3(&mvm->mutex);
}
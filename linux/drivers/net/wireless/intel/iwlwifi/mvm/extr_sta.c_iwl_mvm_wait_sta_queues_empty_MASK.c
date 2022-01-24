#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct iwl_mvm_sta {int /*<<< orphan*/  lock; TYPE_1__* tid_data; } ;
struct iwl_mvm {int /*<<< orphan*/  trans; } ;
struct TYPE_2__ {scalar_t__ txq_id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ IWL_MVM_INVALID_QUEUE ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct iwl_mvm *mvm,
				  struct iwl_mvm_sta *mvm_sta)
{
	int i;

	for (i = 0; i < FUNC0(mvm_sta->tid_data); i++) {
		u16 txq_id;
		int ret;

		FUNC2(&mvm_sta->lock);
		txq_id = mvm_sta->tid_data[i].txq_id;
		FUNC3(&mvm_sta->lock);

		if (txq_id == IWL_MVM_INVALID_QUEUE)
			continue;

		ret = FUNC1(mvm->trans, txq_id);
		if (ret)
			return ret;
	}

	return 0;
}
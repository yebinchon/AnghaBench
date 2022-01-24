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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct iwl_mvm_internal_rxq_notif {scalar_t__ sync; int /*<<< orphan*/  cookie; } ;
struct iwl_mvm {int /*<<< orphan*/  queue_sync_cookie; int /*<<< orphan*/  queue_sync_counter; int /*<<< orphan*/  rx_sync_waitq; int /*<<< orphan*/  mutex; TYPE_1__* trans; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_rx_queues; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*) ; 
 scalar_t__ FUNC6 (struct iwl_mvm*) ; 
 int FUNC7 (struct iwl_mvm*,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC10(struct iwl_mvm *mvm,
				     struct iwl_mvm_internal_rxq_notif *notif,
				     u32 size)
{
	u32 qmask = FUNC0(mvm->trans->num_rx_queues) - 1;
	int ret;


	if (!FUNC5(mvm))
		return;

	if (notif->sync) {
		notif->cookie = mvm->queue_sync_cookie;
		FUNC4(&mvm->queue_sync_counter,
			   mvm->trans->num_rx_queues);
	}

	ret = FUNC7(mvm, qmask, (u8 *)notif,
				      size, !notif->sync);
	if (ret) {
		FUNC1(mvm, "Failed to trigger RX queues sync (%d)\n", ret);
		goto out;
	}

	if (notif->sync) {
		FUNC8(&mvm->mutex);
		ret = FUNC9(mvm->rx_sync_waitq,
					 FUNC3(&mvm->queue_sync_counter) == 0 ||
					 FUNC6(mvm),
					 HZ);
		FUNC2(!ret && !FUNC6(mvm));
	}

out:
	FUNC4(&mvm->queue_sync_counter, 0);
	if (notif->sync)
		mvm->queue_sync_cookie++;
}
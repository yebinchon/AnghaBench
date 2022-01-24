#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  used; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct be_tx_obj {TYPE_2__ q; TYPE_1__ cq; } ;
struct be_tx_compl_info {int /*<<< orphan*/  end_index; } ;
struct be_adapter {int /*<<< orphan*/  netdev; } ;
struct TYPE_6__ {int tx_compl; int /*<<< orphan*/  sync_compl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct be_tx_obj*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*,int /*<<< orphan*/ ,int,int) ; 
 struct be_tx_compl_info* FUNC4 (struct be_adapter*,struct be_tx_obj*) ; 
 scalar_t__ FUNC5 (struct be_adapter*,struct be_tx_obj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC7 (struct be_tx_obj*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct be_adapter *adapter, struct be_tx_obj *txo,
			  int idx)
{
	int num_wrbs = 0, work_done = 0;
	struct be_tx_compl_info *txcp;

	while ((txcp = FUNC4(adapter, txo))) {
		num_wrbs += FUNC5(adapter, txo, txcp->end_index);
		work_done++;
	}

	if (work_done) {
		FUNC3(adapter, txo->cq.id, true, work_done);
		FUNC1(num_wrbs, &txo->q.used);

		/* As Tx wrbs have been freed up, wake up netdev queue
		 * if it was stopped due to lack of tx wrbs.  */
		if (FUNC0(adapter->netdev, idx) &&
		    FUNC2(txo)) {
			FUNC6(adapter->netdev, idx);
		}

		FUNC8(&FUNC7(txo)->sync_compl);
		FUNC7(txo)->tx_compl += work_done;
		FUNC9(&FUNC7(txo)->sync_compl);
	}
}
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
union Vmxnet3_GenericDesc {int /*<<< orphan*/  tcd; } ;
struct TYPE_2__ {int next2proc; scalar_t__ gen; union Vmxnet3_GenericDesc* base; } ;
struct vmxnet3_tx_queue {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_ring; TYPE_1__ comp_ring; } ;
struct vmxnet3_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct vmxnet3_tx_queue*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (struct vmxnet3_tx_queue*,struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct vmxnet3_tx_queue*,struct vmxnet3_adapter*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct vmxnet3_tx_queue*,int /*<<< orphan*/ ,struct vmxnet3_adapter*) ; 

__attribute__((used)) static int
FUNC13(struct vmxnet3_tx_queue *tq,
			struct vmxnet3_adapter *adapter)
{
	int completed = 0;
	union Vmxnet3_GenericDesc *gdesc;

	gdesc = tq->comp_ring.base + tq->comp_ring.next2proc;
	while (FUNC0(&gdesc->tcd) == tq->comp_ring.gen) {
		/* Prevent any &gdesc->tcd field from being (speculatively)
		 * read before (&gdesc->tcd)->gen is read.
		 */
		FUNC3();

		completed += FUNC12(FUNC1(
					       &gdesc->tcd), tq, adapter->pdev,
					       adapter);

		FUNC9(&tq->comp_ring);
		gdesc = tq->comp_ring.base + tq->comp_ring.next2proc;
	}

	if (completed) {
		FUNC5(&tq->tx_lock);
		if (FUNC7(FUNC10(tq, adapter) &&
			     FUNC8(&tq->tx_ring) >
			     FUNC2(tq) &&
			     FUNC4(adapter->netdev))) {
			FUNC11(tq, adapter);
		}
		FUNC6(&tq->tx_lock);
	}
	return completed;
}
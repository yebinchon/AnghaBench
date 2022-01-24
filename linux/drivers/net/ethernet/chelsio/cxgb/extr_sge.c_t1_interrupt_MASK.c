#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  unhandled_irqs; } ;
struct TYPE_3__ {int /*<<< orphan*/  cidx; } ;
struct sge {TYPE_2__ stats; TYPE_1__ respQ; } ;
struct adapter {int /*<<< orphan*/  async_lock; int /*<<< orphan*/  napi; scalar_t__ regs; struct sge* sge; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ A_PL_CAUSE ; 
 scalar_t__ A_SG_SLEEPING ; 
 int /*<<< orphan*/  F_PL_INTR_SGE_DATA ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

irqreturn_t FUNC11(int irq, void *data)
{
	struct adapter *adapter = data;
	struct sge *sge = adapter->sge;
	int handled;

	if (FUNC2(FUNC6(adapter))) {
		FUNC10(F_PL_INTR_SGE_DATA, adapter->regs + A_PL_CAUSE);

		if (FUNC4(&adapter->napi)) {
			if (FUNC5(adapter))
				FUNC1(&adapter->napi);
			else {
				/* no data, no NAPI needed */
				FUNC10(sge->respQ.cidx, adapter->regs + A_SG_SLEEPING);
				/* undo schedule_prep */
				FUNC3(&adapter->napi);
			}
		}
		return IRQ_HANDLED;
	}

	FUNC7(&adapter->async_lock);
	handled = FUNC9(adapter);
	FUNC8(&adapter->async_lock);

	if (!handled)
		sge->stats.unhandled_irqs++;

	return FUNC0(handled != 0);
}
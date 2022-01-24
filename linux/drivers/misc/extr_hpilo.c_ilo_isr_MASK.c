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
struct ilo_hwinfo {int /*<<< orphan*/  alloc_lock; TYPE_1__** ccb_alloc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  ccb_waitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct ilo_hwinfo*,int) ; 
 int FUNC1 (struct ilo_hwinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct ilo_hwinfo*) ; 
 scalar_t__ FUNC3 (int) ; 
 int max_ccb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct ilo_hwinfo *hw = data;
	int pending, i;

	FUNC4(&hw->alloc_lock);

	/* check for ccbs which have data */
	pending = FUNC1(hw);
	if (!pending) {
		FUNC5(&hw->alloc_lock);
		return IRQ_NONE;
	}

	if (FUNC3(pending)) {
		/* wake up all ccbs if the device was reset */
		pending = -1;
		FUNC2(hw);
	}

	for (i = 0; i < max_ccb; i++) {
		if (!hw->ccb_alloc[i])
			continue;
		if (pending & (1 << i))
			FUNC6(&hw->ccb_alloc[i]->ccb_waitq);
	}

	/* clear the device of the channels that have been handled */
	FUNC0(hw, pending);

	FUNC5(&hw->alloc_lock);

	return IRQ_HANDLED;
}
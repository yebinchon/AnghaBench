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
typedef  int u32 ;
struct denali_controller {int nbanks; int active_bank; int irq_status; int irq_mask; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  complete; scalar_t__ reg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct denali_controller*,int,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct denali_controller *denali = dev_id;
	irqreturn_t ret = IRQ_NONE;
	u32 irq_status;
	int i;

	FUNC4(&denali->irq_lock);

	for (i = 0; i < denali->nbanks; i++) {
		irq_status = FUNC3(denali->reg + FUNC0(i));
		if (irq_status)
			ret = IRQ_HANDLED;

		FUNC2(denali, i, irq_status);

		if (i != denali->active_bank)
			continue;

		denali->irq_status |= irq_status;

		if (denali->irq_status & denali->irq_mask)
			FUNC1(&denali->complete);
	}

	FUNC5(&denali->irq_lock);

	return ret;
}
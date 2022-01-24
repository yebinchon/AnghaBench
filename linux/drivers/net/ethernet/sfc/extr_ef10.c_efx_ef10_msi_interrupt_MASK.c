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
struct efx_nic {size_t irq_level; int /*<<< orphan*/ * channel; int /*<<< orphan*/  last_irq_cpu; int /*<<< orphan*/  irq_soft_enabled; int /*<<< orphan*/  net_dev; } ;
struct efx_msi_context {size_t index; struct efx_nic* efx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intr ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct efx_msi_context *context = dev_id;
	struct efx_nic *efx = context->efx;

	FUNC3(efx, intr, efx->net_dev,
		   "IRQ %d on CPU %d\n", irq, FUNC4());

	if (FUNC2(FUNC0(efx->irq_soft_enabled))) {
		/* Note test interrupts */
		if (context->index == efx->irq_level)
			efx->last_irq_cpu = FUNC4();

		/* Schedule processing of the channel */
		FUNC1(efx->channel[context->index]);
	}

	return IRQ_HANDLED;
}
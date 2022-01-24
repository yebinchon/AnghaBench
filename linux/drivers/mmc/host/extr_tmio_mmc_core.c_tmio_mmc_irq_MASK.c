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
struct tmio_mmc_host {unsigned int sdcard_irq_mask; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int TMIO_MASK_IRQ ; 
 scalar_t__ FUNC0 (struct tmio_mmc_host*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (struct tmio_mmc_host*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (struct tmio_mmc_host*) ; 
 unsigned int FUNC3 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tmio_mmc_host*,int /*<<< orphan*/ ,unsigned int) ; 

irqreturn_t FUNC5(int irq, void *devid)
{
	struct tmio_mmc_host *host = devid;
	unsigned int ireg, status;

	status = FUNC3(host, CTL_STATUS);
	ireg = status & TMIO_MASK_IRQ & ~host->sdcard_irq_mask;

	/* Clear the status except the interrupt status */
	FUNC4(host, CTL_STATUS, TMIO_MASK_IRQ);

	if (FUNC0(host, ireg, status))
		return IRQ_HANDLED;
	if (FUNC1(host, ireg, status))
		return IRQ_HANDLED;

	if (FUNC2(host))
		return IRQ_HANDLED;

	return IRQ_NONE;
}
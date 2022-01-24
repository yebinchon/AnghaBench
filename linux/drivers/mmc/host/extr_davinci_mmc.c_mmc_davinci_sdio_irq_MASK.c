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
struct mmc_davinci_host {int /*<<< orphan*/  mmc; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ DAVINCI_SDIOIST ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int SDIOIST_IOINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct mmc_davinci_host *host = dev_id;
	unsigned int status;

	status = FUNC3(host->base + DAVINCI_SDIOIST);
	if (status & SDIOIST_IOINT) {
		FUNC0(FUNC1(host->mmc),
			"SDIO interrupt status %x\n", status);
		FUNC4(status | SDIOIST_IOINT, host->base + DAVINCI_SDIOIST);
		FUNC2(host->mmc);
	}
	return IRQ_HANDLED;
}
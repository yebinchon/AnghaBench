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
struct omap_hsmmc_host {int /*<<< orphan*/  base; int /*<<< orphan*/  mmc; scalar_t__ req_in_progress; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CIRQ_EN ; 
 int INT_EN_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_hsmmc_host*,int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct omap_hsmmc_host *host = dev_id;
	int status;

	status = FUNC0(host->base, STAT);
	while (status & (INT_EN_MASK | CIRQ_EN)) {
		if (host->req_in_progress)
			FUNC2(host, status);

		if (status & CIRQ_EN)
			FUNC1(host->mmc);

		/* Flush posted write */
		status = FUNC0(host->base, STAT);
	}

	return IRQ_HANDLED;
}
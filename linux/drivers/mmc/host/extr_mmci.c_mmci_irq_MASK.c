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
typedef  int u32 ;
struct mmci_host {int mask1_reg; int /*<<< orphan*/  lock; TYPE_1__* variant; int /*<<< orphan*/  data; int /*<<< orphan*/  cmd; int /*<<< orphan*/  mmc; scalar_t__ base; scalar_t__ singleirq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int irq_pio_mask; int busy_detect_mask; int busy_detect_flag; scalar_t__ reversed_irq_handling; scalar_t__ busy_detect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MMCICLEAR ; 
 scalar_t__ MMCIMASK0 ; 
 scalar_t__ MMCISTATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmci_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mmci_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,void*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct mmci_host *host = dev_id;
	u32 status;
	int ret = 0;

	FUNC7(&host->lock);

	do {
		status = FUNC6(host->base + MMCISTATUS);

		if (host->singleirq) {
			if (status & host->mask1_reg)
				FUNC5(irq, dev_id);

			status &= ~host->variant->irq_pio_mask;
		}

		/*
		 * Busy detection is managed by mmci_cmd_irq(), including to
		 * clear the corresponding IRQ.
		 */
		status &= FUNC6(host->base + MMCIMASK0);
		if (host->variant->busy_detect)
			FUNC9(status & ~host->variant->busy_detect_mask,
			       host->base + MMCICLEAR);
		else
			FUNC9(status, host->base + MMCICLEAR);

		FUNC1(FUNC2(host->mmc), "irq0 (data+cmd) %08x\n", status);

		if (host->variant->reversed_irq_handling) {
			FUNC4(host, host->data, status);
			FUNC3(host, host->cmd, status);
		} else {
			FUNC3(host, host->cmd, status);
			FUNC4(host, host->data, status);
		}

		/*
		 * Busy detection has been handled by mmci_cmd_irq() above.
		 * Clear the status bit to prevent polling in IRQ context.
		 */
		if (host->variant->busy_detect_flag)
			status &= ~host->variant->busy_detect_flag;

		ret = 1;
	} while (status);

	FUNC8(&host->lock);

	return FUNC0(ret);
}
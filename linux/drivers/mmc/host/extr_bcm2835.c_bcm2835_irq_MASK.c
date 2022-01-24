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
struct bcm2835_host {int irq_block; int irq_busy; int hcfg; int irq_data; int /*<<< orphan*/  lock; scalar_t__ ioaddr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int SDHCFG_DATA_IRPT_EN ; 
 scalar_t__ SDHSTS ; 
 int SDHSTS_BLOCK_IRPT ; 
 int SDHSTS_BUSY_IRPT ; 
 int SDHSTS_DATA_FLAG ; 
 int SDHSTS_SDIO_IRPT ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_host*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_host*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	irqreturn_t result = IRQ_NONE;
	struct bcm2835_host *host = dev_id;
	u32 intmask;

	FUNC4(&host->lock);

	intmask = FUNC3(host->ioaddr + SDHSTS);

	FUNC6(SDHSTS_BUSY_IRPT |
	       SDHSTS_BLOCK_IRPT |
	       SDHSTS_SDIO_IRPT |
	       SDHSTS_DATA_FLAG,
	       host->ioaddr + SDHSTS);

	if (intmask & SDHSTS_BLOCK_IRPT) {
		FUNC1(host, intmask);
		host->irq_block = true;
		result = IRQ_WAKE_THREAD;
	}

	if (intmask & SDHSTS_BUSY_IRPT) {
		if (!FUNC0(host, intmask)) {
			host->irq_busy = true;
			result = IRQ_WAKE_THREAD;
		} else {
			result = IRQ_HANDLED;
		}
	}

	/* There is no true data interrupt status bit, so it is
	 * necessary to qualify the data flag with the interrupt
	 * enable bit.
	 */
	if ((intmask & SDHSTS_DATA_FLAG) &&
	    (host->hcfg & SDHCFG_DATA_IRPT_EN)) {
		FUNC2(host, intmask);
		host->irq_data = true;
		result = IRQ_WAKE_THREAD;
	}

	FUNC5(&host->lock);

	return result;
}
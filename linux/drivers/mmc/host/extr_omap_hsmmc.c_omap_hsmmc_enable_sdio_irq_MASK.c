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
struct omap_hsmmc_host {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  base; int /*<<< orphan*/  req_in_progress; int /*<<< orphan*/  flags; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int CIRQ_EN ; 
 int CLKEXTFREE ; 
 int /*<<< orphan*/  CON ; 
 int CTPL ; 
 int /*<<< orphan*/  HSMMC_SDIO_IRQ_ENABLED ; 
 int /*<<< orphan*/  IE ; 
 int /*<<< orphan*/  ISE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct omap_hsmmc_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct mmc_host *mmc, int enable)
{
	struct omap_hsmmc_host *host = FUNC2(mmc);
	u32 irq_mask, con;
	unsigned long flags;

	FUNC3(&host->irq_lock, flags);

	con = FUNC0(host->base, CON);
	irq_mask = FUNC0(host->base, ISE);
	if (enable) {
		host->flags |= HSMMC_SDIO_IRQ_ENABLED;
		irq_mask |= CIRQ_EN;
		con |= CTPL | CLKEXTFREE;
	} else {
		host->flags &= ~HSMMC_SDIO_IRQ_ENABLED;
		irq_mask &= ~CIRQ_EN;
		con &= ~(CTPL | CLKEXTFREE);
	}
	FUNC1(host->base, CON, con);
	FUNC1(host->base, IE, irq_mask);

	/*
	 * if enable, piggy back detection on current request
	 * but always disable immediately
	 */
	if (!host->req_in_progress || !enable)
		FUNC1(host->base, ISE, irq_mask);

	/* flush posted write */
	FUNC0(host->base, IE);

	FUNC4(&host->irq_lock, flags);
}
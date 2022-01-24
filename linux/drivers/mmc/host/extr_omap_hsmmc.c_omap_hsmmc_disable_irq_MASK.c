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
typedef  int /*<<< orphan*/  u32 ;
struct omap_hsmmc_host {int flags; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIRQ_EN ; 
 int HSMMC_SDIO_IRQ_ENABLED ; 
 int /*<<< orphan*/  IE ; 
 int /*<<< orphan*/  ISE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STAT ; 
 int /*<<< orphan*/  STAT_CLEAR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct omap_hsmmc_host *host)
{
	u32 irq_mask = 0;
	unsigned long flags;

	FUNC1(&host->irq_lock, flags);
	/* no transfer running but need to keep cirq if enabled */
	if (host->flags & HSMMC_SDIO_IRQ_ENABLED)
		irq_mask |= CIRQ_EN;
	FUNC0(host->base, ISE, irq_mask);
	FUNC0(host->base, IE, irq_mask);
	FUNC0(host->base, STAT, STAT_CLEAR);
	FUNC2(&host->irq_lock, flags);
}
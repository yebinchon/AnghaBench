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
struct jz4740_mmc_host {unsigned int irq_mask; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jz4740_mmc_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct jz4740_mmc_host *host,
	unsigned int irq, bool enabled)
{
	unsigned long flags;

	FUNC1(&host->lock, flags);
	if (enabled)
		host->irq_mask &= ~irq;
	else
		host->irq_mask |= irq;

	FUNC0(host, host->irq_mask);
	FUNC2(&host->lock, flags);
}
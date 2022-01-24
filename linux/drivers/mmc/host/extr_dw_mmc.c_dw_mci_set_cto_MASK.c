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
typedef  unsigned int u64 ;
struct dw_mci {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  cto_timer; int /*<<< orphan*/  pending_events; int /*<<< orphan*/  bus_hz; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLKDIV ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVENT_CMD_COMPLETE ; 
 scalar_t__ MSEC_PER_SEC ; 
 int /*<<< orphan*/  TMOUT ; 
 scalar_t__ jiffies ; 
 int FUNC1 (struct dw_mci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct dw_mci *host)
{
	unsigned int cto_clks;
	unsigned int cto_div;
	unsigned int cto_ms;
	unsigned long irqflags;

	cto_clks = FUNC1(host, TMOUT) & 0xff;
	cto_div = (FUNC1(host, CLKDIV) & 0xff) * 2;
	if (cto_div == 0)
		cto_div = 1;

	cto_ms = FUNC0((u64)MSEC_PER_SEC * cto_clks * cto_div,
				  host->bus_hz);

	/* add a bit spare time */
	cto_ms += 10;

	/*
	 * The durations we're working with are fairly short so we have to be
	 * extra careful about synchronization here.  Specifically in hardware a
	 * command timeout is _at most_ 5.1 ms, so that means we expect an
	 * interrupt (either command done or timeout) to come rather quickly
	 * after the mci_writel.  ...but just in case we have a long interrupt
	 * latency let's add a bit of paranoia.
	 *
	 * In general we'll assume that at least an interrupt will be asserted
	 * in hardware by the time the cto_timer runs.  ...and if it hasn't
	 * been asserted in hardware by that time then we'll assume it'll never
	 * come.
	 */
	FUNC4(&host->irq_lock, irqflags);
	if (!FUNC6(EVENT_CMD_COMPLETE, &host->pending_events))
		FUNC2(&host->cto_timer,
			jiffies + FUNC3(cto_ms) + 1);
	FUNC5(&host->irq_lock, irqflags);
}
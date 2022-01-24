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
struct mmc_host {int caps; int detect_change; int /*<<< orphan*/  detect; } ;

/* Variables and functions */
 int MMC_CAP_NEEDS_POLL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *host, unsigned long delay,
				bool cd_irq)
{
	/*
	 * If the device is configured as wakeup, we prevent a new sleep for
	 * 5 s to give provision for user space to consume the event.
	 */
	if (cd_irq && !(host->caps & MMC_CAP_NEEDS_POLL) &&
		FUNC0(FUNC1(host)))
		FUNC3(FUNC1(host), 5000);

	host->detect_change = 1;
	FUNC2(&host->detect, delay);
}
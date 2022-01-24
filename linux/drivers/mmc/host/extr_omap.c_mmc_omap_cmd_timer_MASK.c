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
struct timer_list {int dummy; } ;
struct mmc_omap_host {int abort; int /*<<< orphan*/  slot_lock; int /*<<< orphan*/  cmd_abort_work; int /*<<< orphan*/  mmc_omap_wq; int /*<<< orphan*/  irq; int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  IE ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_omap_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmd_abort_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mmc_omap_host* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct mmc_omap_host* host ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct timer_list *t)
{
	struct mmc_omap_host *host = FUNC2(host, t, cmd_abort_timer);
	unsigned long flags;

	FUNC4(&host->slot_lock, flags);
	if (host->cmd != NULL && !host->abort) {
		FUNC0(host, IE, 0);
		FUNC1(host->irq);
		host->abort = 1;
		FUNC3(host->mmc_omap_wq, &host->cmd_abort_work);
	}
	FUNC5(&host->slot_lock, flags);
}
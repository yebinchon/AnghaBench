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
struct brcmf_sdio {int /*<<< orphan*/  timer; scalar_t__ wd_active; int /*<<< orphan*/  watchdog_wait; scalar_t__ watchdog_tsk; } ;

/* Variables and functions */
 scalar_t__ BRCMF_WD_POLL ; 
 struct brcmf_sdio* bus ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct brcmf_sdio* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void
FUNC3(struct timer_list *t)
{
	struct brcmf_sdio *bus = FUNC1(bus, t, timer);

	if (bus->watchdog_tsk) {
		FUNC0(&bus->watchdog_wait);
		/* Reschedule the watchdog */
		if (bus->wd_active)
			FUNC2(&bus->timer,
				  jiffies + BRCMF_WD_POLL);
	}
}
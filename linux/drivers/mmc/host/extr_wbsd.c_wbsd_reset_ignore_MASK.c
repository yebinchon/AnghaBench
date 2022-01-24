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
struct wbsd_host {int /*<<< orphan*/  lock; int /*<<< orphan*/  card_tasklet; int /*<<< orphan*/  flags; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  WBSD_FIGNORE_DETECT ; 
 struct wbsd_host* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct wbsd_host* host ; 
 int /*<<< orphan*/  ignore_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct wbsd_host *host = FUNC2(host, t, ignore_timer);

	FUNC0(host == NULL);

	FUNC1("Resetting card detection ignore\n");

	FUNC3(&host->lock);

	host->flags &= ~WBSD_FIGNORE_DETECT;

	/*
	 * Card status might have changed during the
	 * blackout.
	 */
	FUNC5(&host->card_tasklet);

	FUNC4(&host->lock);
}
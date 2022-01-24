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
struct vub300_mmc_host {int /*<<< orphan*/  inactivity_timer; scalar_t__ cmd; int /*<<< orphan*/  kref; int /*<<< orphan*/  interface; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 struct vub300_mmc_host* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inactivity_timer ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct vub300_mmc_host* vub300 ; 
 int /*<<< orphan*/  vub300_delete ; 
 int /*<<< orphan*/  FUNC3 (struct vub300_mmc_host*) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{				/* softirq */
	struct vub300_mmc_host *vub300 = FUNC0(vub300, t,
						    inactivity_timer);
	if (!vub300->interface) {
		FUNC1(&vub300->kref, vub300_delete);
	} else if (vub300->cmd) {
		FUNC2(&vub300->inactivity_timer, jiffies + HZ);
	} else {
		FUNC3(vub300);
		FUNC2(&vub300->inactivity_timer, jiffies + HZ);
	}
}
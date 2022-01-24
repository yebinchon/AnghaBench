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
struct vub300_mmc_host {int usb_timed_out; int /*<<< orphan*/  command_res_urb; int /*<<< orphan*/  command_out_urb; scalar_t__ usb_transport_fail; int /*<<< orphan*/  irqpoll_complete; int /*<<< orphan*/  inactivity_timer; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (struct vub300_mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct vub300_mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct vub300_mmc_host *vub300)
{
	/* cmd_mutex is held by vub300_pollwork_thread */
	unsigned long commretval;
	FUNC2(&vub300->inactivity_timer, jiffies + HZ);
	FUNC1(&vub300->irqpoll_complete);
	FUNC4(vub300);
	commretval = FUNC6(&vub300->irqpoll_complete,
						 FUNC3(500));
	if (vub300->usb_transport_fail) {
		/* no need to do anything */
	} else if (commretval == 0) {
		vub300->usb_timed_out = 1;
		FUNC5(vub300->command_out_urb);
		FUNC5(vub300->command_res_urb);
	} else { /* commretval > 0 */
		FUNC0(vub300);
	}
}
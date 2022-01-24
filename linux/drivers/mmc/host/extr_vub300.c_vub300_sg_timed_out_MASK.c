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
struct vub300_mmc_host {int usb_timed_out; int /*<<< orphan*/  command_res_urb; int /*<<< orphan*/  command_out_urb; int /*<<< orphan*/  sg_request; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 struct vub300_mmc_host* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sg_transfer_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct vub300_mmc_host* vub300 ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct vub300_mmc_host *vub300 = FUNC0(vub300, t,
						    sg_transfer_timer);
	vub300->usb_timed_out = 1;
	FUNC1(&vub300->sg_request);
	FUNC2(vub300->command_out_urb);
	FUNC2(vub300->command_res_urb);
}
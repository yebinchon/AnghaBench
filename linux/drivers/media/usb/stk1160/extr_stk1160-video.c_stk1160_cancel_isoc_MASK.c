#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int num_bufs; int /*<<< orphan*/ * urb; } ;
struct stk1160 {TYPE_1__ isoc_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct stk1160 *dev)
{
	int i, num_bufs = dev->isoc_ctl.num_bufs;

	/*
	 * This check is not necessary, but we add it
	 * to avoid a spurious debug message
	 */
	if (!num_bufs)
		return;

	FUNC0("killing %d urbs...\n", num_bufs);

	for (i = 0; i < num_bufs; i++) {

		/*
		 * To kill urbs we can't be in atomic context.
		 * We don't care for NULL pointer since
		 * usb_kill_urb allows it.
		 */
		FUNC1(dev->isoc_ctl.urb[i]);
	}

	FUNC0("all urbs killed\n");
}
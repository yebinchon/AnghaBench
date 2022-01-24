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
struct urb {int dummy; } ;
struct TYPE_2__ {int num_bufs; struct urb** transfer_buffer; struct urb** urb; int /*<<< orphan*/ * buf; } ;
struct tm6000_core {TYPE_1__ isoc_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  keep_urb ; 
 int /*<<< orphan*/  FUNC0 (struct urb**) ; 
 int /*<<< orphan*/  FUNC1 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 

__attribute__((used)) static void FUNC5(struct tm6000_core *dev)
{
	struct urb *urb;
	int i;

	dev->isoc_ctl.buf = NULL;
	for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
		urb = dev->isoc_ctl.urb[i];
		if (urb) {
			FUNC3(urb);
			FUNC4(urb);
			FUNC2(urb);
			dev->isoc_ctl.urb[i] = NULL;
		}
		dev->isoc_ctl.transfer_buffer[i] = NULL;
	}

	if (!keep_urb)
		FUNC1(dev);

	FUNC0(dev->isoc_ctl.urb);
	FUNC0(dev->isoc_ctl.transfer_buffer);

	dev->isoc_ctl.urb = NULL;
	dev->isoc_ctl.transfer_buffer = NULL;
	dev->isoc_ctl.num_bufs = 0;
}
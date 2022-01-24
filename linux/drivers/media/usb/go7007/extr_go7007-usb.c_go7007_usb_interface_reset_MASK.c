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
typedef  int u16 ;
struct go7007_usb {TYPE_1__* board; } ;
struct go7007 {scalar_t__ status; int /*<<< orphan*/  dev; struct go7007_usb* hpi_context; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int GO7007_USB_EZUSB ; 
 scalar_t__ STATUS_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct go7007*,int*,int*) ; 
 scalar_t__ FUNC2 (struct go7007*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct go7007*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct go7007 *go)
{
	struct go7007_usb *usb = go->hpi_context;
	u16 intr_val, intr_data;

	if (go->status == STATUS_SHUTDOWN)
		return -1;
	/* Reset encoder */
	if (FUNC3(go, 0x0001, 0x0001) < 0)
		return -1;
	FUNC4(100);

	if (usb->board->flags & GO7007_USB_EZUSB) {
		/* Reset buffer in EZ-USB */
		FUNC5("resetting EZ-USB buffers\n");
		if (FUNC2(go, 0x10, 0, 0, NULL, 0, 0) < 0 ||
		    FUNC2(go, 0x10, 0, 0, NULL, 0, 0) < 0)
			return -1;

		/* Reset encoder again */
		if (FUNC3(go, 0x0001, 0x0001) < 0)
			return -1;
		FUNC4(100);
	}

	/* Wait for an interrupt to indicate successful hardware reset */
	if (FUNC1(go, &intr_val, &intr_data) < 0 ||
			(intr_val & ~0x1) != 0x55aa) {
		FUNC0(go->dev, "unable to reset the USB interface\n");
		return -1;
	}
	return 0;
}
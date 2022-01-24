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
struct usb_usbvision {int /*<<< orphan*/  vdev; int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct usb_usbvision *usbvision)
{
	/* Radio Device: */
	if (FUNC2(&usbvision->rdev)) {
		FUNC0(DBG_PROBE, "unregister %s [v4l2]",
		       FUNC1(&usbvision->rdev));
		FUNC3(&usbvision->rdev);
	}

	/* Video Device: */
	if (FUNC2(&usbvision->vdev)) {
		FUNC0(DBG_PROBE, "unregister %s [v4l2]",
		       FUNC1(&usbvision->vdev));
		FUNC3(&usbvision->vdev);
	}
}
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
struct usb_usbvision {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  hdl; int /*<<< orphan*/  ctrl_urb; struct usb_usbvision* alt_max_pkt_size; int /*<<< orphan*/  vdev; scalar_t__ initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_usbvision *usbvision)
{
	FUNC0(DBG_PROBE, "");

	usbvision->initialized = 0;

	FUNC3(&usbvision->vdev);
	FUNC4(usbvision);
	FUNC1(usbvision->alt_max_pkt_size);

	FUNC2(usbvision->ctrl_urb);

	FUNC5(&usbvision->hdl);
	FUNC6(&usbvision->v4l2_dev);
	FUNC1(usbvision);

	FUNC0(DBG_PROBE, "success");
}
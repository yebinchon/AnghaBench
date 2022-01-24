#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * ctrl_handler; } ;
struct usb_usbvision {TYPE_1__ v4l2_dev; int /*<<< orphan*/  hdl; int /*<<< orphan*/  ctrl_urb; int /*<<< orphan*/  v4l2_lock; struct usb_device* dev; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USBVISION_URB_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (struct usb_usbvision*) ; 
 struct usb_usbvision* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static struct usb_usbvision *FUNC8(struct usb_device *dev,
					     struct usb_interface *intf)
{
	struct usb_usbvision *usbvision;

	usbvision = FUNC1(sizeof(*usbvision), GFP_KERNEL);
	if (!usbvision)
		return NULL;

	usbvision->dev = dev;
	if (FUNC6(&intf->dev, &usbvision->v4l2_dev))
		goto err_free;

	if (FUNC5(&usbvision->hdl, 4))
		goto err_unreg;
	usbvision->v4l2_dev.ctrl_handler = &usbvision->hdl;
	FUNC2(&usbvision->v4l2_lock);

	/* prepare control urb for control messages during interrupts */
	usbvision->ctrl_urb = FUNC3(USBVISION_URB_FRAMES, GFP_KERNEL);
	if (!usbvision->ctrl_urb)
		goto err_unreg;

	return usbvision;

err_unreg:
	FUNC4(&usbvision->hdl);
	FUNC7(&usbvision->v4l2_dev);
err_free:
	FUNC0(usbvision);
	return NULL;
}
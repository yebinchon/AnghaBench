#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usbnet {TYPE_2__* udev; int /*<<< orphan*/  data; } ;
struct usb_interface {int dummy; } ;
struct usb_driver {int dummy; } ;
struct qmi_wwan_state {struct usb_interface* control; struct usb_interface* data; TYPE_3__* subdriver; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* disconnect ) (struct usb_interface*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  bcdUSB; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 struct usb_driver* FUNC0 (struct usb_interface*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_driver*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usbnet *dev, struct usb_interface *intf)
{
	struct qmi_wwan_state *info = (void *)&dev->data;
	struct usb_driver *driver = FUNC0(intf);
	struct usb_interface *other;

	if (info->subdriver && info->subdriver->disconnect)
		info->subdriver->disconnect(info->control);

	/* disable MDM9x30 quirk */
	if (FUNC1(dev->udev->descriptor.bcdUSB) >= 0x0201) {
		FUNC2(dev, false);
		FUNC3(dev, 0);
	}

	/* allow user to unbind using either control or data */
	if (intf == info->control)
		other = info->data;
	else
		other = info->control;

	/* only if not shared */
	if (other && intf != other) {
		FUNC6(other, NULL);
		FUNC5(driver, other);
	}

	info->subdriver = NULL;
	info->data = NULL;
	info->control = NULL;
}
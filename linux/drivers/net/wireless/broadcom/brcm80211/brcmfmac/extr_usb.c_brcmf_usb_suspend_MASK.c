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
struct usb_interface {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct brcmf_usbdev_info {scalar_t__ wowl_enabled; TYPE_1__ bus_pub; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMFMAC_USB_STATE_SLEEP ; 
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_usbdev_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct brcmf_usbdev_info* FUNC4 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf, pm_message_t state)
{
	struct usb_device *usb = FUNC5(intf);
	struct brcmf_usbdev_info *devinfo = FUNC4(&usb->dev);

	FUNC1(USB, "Enter\n");
	devinfo->bus_pub.state = BRCMFMAC_USB_STATE_SLEEP;
	if (devinfo->wowl_enabled) {
		FUNC0(devinfo);
	} else {
		FUNC2(&usb->dev);
		FUNC3(&usb->dev);
	}
	return 0;
}
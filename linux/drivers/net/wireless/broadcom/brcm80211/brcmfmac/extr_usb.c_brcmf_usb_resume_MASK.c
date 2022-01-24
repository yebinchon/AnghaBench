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
struct brcmf_usbdev_info {TYPE_1__ bus_pub; int /*<<< orphan*/  dev; int /*<<< orphan*/  settings; int /*<<< orphan*/  wowl_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMFMAC_USB_STATE_UP ; 
 int /*<<< orphan*/  USB ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct brcmf_usbdev_info* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_usbdev_info*) ; 
 struct usb_device* FUNC6 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC7(struct usb_interface *intf)
{
	struct usb_device *usb = FUNC6(intf);
	struct brcmf_usbdev_info *devinfo = FUNC4(&usb->dev);

	FUNC2(USB, "Enter\n");
	if (!devinfo->wowl_enabled) {
		int err;

		err = FUNC0(&usb->dev, devinfo->settings);
		if (err)
			return err;

		err = FUNC1(devinfo->dev);
		if (err) {
			FUNC3(devinfo->dev);
			return err;
		}
	}

	devinfo->bus_pub.state = BRCMFMAC_USB_STATE_UP;
	FUNC5(devinfo);
	return 0;
}
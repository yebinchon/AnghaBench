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
struct usb_interface {int dummy; } ;
struct brcmf_usbdev_info {int /*<<< orphan*/  dev_init_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_usbdev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_usbdev_info*) ; 
 scalar_t__ FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct usb_interface *intf)
{
	struct brcmf_usbdev_info *devinfo;

	FUNC0(USB, "Enter\n");
	devinfo = (struct brcmf_usbdev_info *)FUNC3(intf);

	if (devinfo) {
		FUNC4(&devinfo->dev_init_done);
		/* Make sure that devinfo still exists. Firmware probe routines
		 * may have released the device and cleared the intfdata.
		 */
		if (!FUNC3(intf))
			goto done;

		FUNC1(devinfo);
		FUNC2(devinfo);
	}
done:
	FUNC0(USB, "Exit\n");
}
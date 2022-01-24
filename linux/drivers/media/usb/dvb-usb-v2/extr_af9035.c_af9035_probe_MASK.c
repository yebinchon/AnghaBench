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
struct usb_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; int /*<<< orphan*/  iManufacturer; } ;
struct usb_device {int /*<<< orphan*/  dev; TYPE_1__ descriptor; } ;
typedef  int /*<<< orphan*/  manufacturer ;

/* Variables and functions */
 int ENODEV ; 
 int USB_VID_TERRATEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct usb_interface*,struct usb_device_id const*) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC7(struct usb_interface *intf,
		const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC2(intf);
	char manufacturer[sizeof("Afatech")];

	FUNC4(manufacturer, 0, sizeof(manufacturer));
	FUNC6(udev, udev->descriptor.iManufacturer,
			manufacturer, sizeof(manufacturer));
	/*
	 * There is two devices having same ID but different chipset. One uses
	 * AF9015 and the other IT9135 chipset. Only difference seen on lsusb
	 * is iManufacturer string.
	 *
	 * idVendor           0x0ccd TerraTec Electronic GmbH
	 * idProduct          0x0099
	 * bcdDevice            2.00
	 * iManufacturer           1 Afatech
	 * iProduct                2 DVB-T 2
	 *
	 * idVendor           0x0ccd TerraTec Electronic GmbH
	 * idProduct          0x0099
	 * bcdDevice            2.00
	 * iManufacturer           1 ITE Technologies, Inc.
	 * iProduct                2 DVB-T TV Stick
	 */
	if ((FUNC3(udev->descriptor.idVendor) == USB_VID_TERRATEC) &&
			(FUNC3(udev->descriptor.idProduct) == 0x0099)) {
		if (!FUNC5("Afatech", manufacturer)) {
			FUNC0(&udev->dev, "rejecting device\n");
			return -ENODEV;
		}
	}

	return FUNC1(intf, id);
}
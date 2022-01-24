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
typedef  int /*<<< orphan*/  u8 ;
struct usbnet {struct driver_info* driver_info; int /*<<< orphan*/  udev; } ;
struct TYPE_6__ {int /*<<< orphan*/  driver; } ;
struct usb_interface {TYPE_3__ dev; TYPE_2__* cur_altsetting; } ;
struct usb_driver {int /*<<< orphan*/  id_table; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct driver_info {int /*<<< orphan*/  description; } ;
struct TYPE_4__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 struct usb_driver* FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_device_id* FUNC2 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usbnet *dev, struct usb_interface *intf, u8 alt)
{
	struct usb_driver *driver = FUNC1(intf->dev.driver);
	const struct usb_device_id *id;
	struct driver_info *info;
	int ret;

	ret = FUNC3(dev->udev,
				intf->cur_altsetting->desc.bInterfaceNumber,
				alt);
	if (ret)
		return ret;

	id = FUNC2(intf, driver->id_table);
	if (!id)
		return -ENODEV;

	info = (struct driver_info *)id->driver_info;
	if (info != dev->driver_info) {
		FUNC0(&intf->dev, "driver_info updated to '%s'\n",
			info->description);
		dev->driver_info = info;
	}
	return 0;
}
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
struct usb_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; int /*<<< orphan*/  value; scalar_t__ request; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTV5100_USB_TIMEOUT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  adapter_nr ; 
 TYPE_1__* dtv5100_init ; 
 int /*<<< orphan*/  dtv5100_properties ; 
 int FUNC0 (struct usb_interface*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	int i, ret;
	struct usb_device *udev = FUNC1(intf);

	/* initialize non qt1010/zl10353 part? */
	for (i = 0; dtv5100_init[i].request; i++) {
		ret = FUNC2(udev, FUNC3(udev, 0),
				      dtv5100_init[i].request,
				      USB_TYPE_VENDOR | USB_DIR_OUT,
				      dtv5100_init[i].value,
				      dtv5100_init[i].index, NULL, 0,
				      DTV5100_USB_TIMEOUT);
		if (ret)
			return ret;
	}

	ret = FUNC0(intf, &dtv5100_properties,
				  THIS_MODULE, NULL, adapter_nr);
	if (ret)
		return ret;

	return 0;
}
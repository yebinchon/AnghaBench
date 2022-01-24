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
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int usb_err; int /*<<< orphan*/  usb_buf; struct usb_device* dev; } ;
struct sd {TYPE_1__ gspca_dev; } ;

/* Variables and functions */
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sd *sd, u16* data)
{
	struct usb_device *udev = sd->gspca_dev.dev;
	u16 value;
	int ret;

	if (sd->gspca_dev.usb_err < 0)
		return;

	value = *data++;
	FUNC0(sd->gspca_dev.usb_buf, data, 6);

	/* Avoid things going to fast for the bridge with a xhci host */
	FUNC2(150);
	ret = FUNC3(udev, FUNC4(udev, 0), 0,
			      USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
			      value, 0x06, sd->gspca_dev.usb_buf, 6, 500);
	if (ret < 0) {
		FUNC1("Write FSB registers failed (%d)\n", ret);
		sd->gspca_dev.usb_err = ret;
	}
}
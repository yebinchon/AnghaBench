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
typedef  int /*<<< orphan*/  u8 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int usb_err; int /*<<< orphan*/  usb_buf; struct usb_device* dev; } ;

/* Variables and functions */
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gspca_dev *gspca_dev, u8 index)
{
	struct usb_device *dev = gspca_dev->dev;
	int ret;

	if (gspca_dev->usb_err < 0)
		return;
	ret = FUNC1(dev, FUNC2(dev, 0),
			0x0d,
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			0, index, gspca_dev->usb_buf, 1, 500);
	if (ret < 0) {
		FUNC0("reg_r err %d\n", ret);
		gspca_dev->usb_err = ret;
	}
}
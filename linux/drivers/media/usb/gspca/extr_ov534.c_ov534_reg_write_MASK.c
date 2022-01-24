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
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int usb_err; int /*<<< orphan*/ * usb_buf; struct usb_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_TIMEOUT ; 
 int /*<<< orphan*/  D_USBO ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev, u16 reg, u8 val)
{
	struct usb_device *udev = gspca_dev->dev;
	int ret;

	if (gspca_dev->usb_err < 0)
		return;

	FUNC0(gspca_dev, D_USBO, "SET 01 0000 %04x %02x\n", reg, val);
	gspca_dev->usb_buf[0] = val;
	ret = FUNC2(udev,
			      FUNC3(udev, 0),
			      0x01,
			      USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			      0x00, reg, gspca_dev->usb_buf, 1, CTRL_TIMEOUT);
	if (ret < 0) {
		FUNC1("write failed %d\n", ret);
		gspca_dev->usb_err = ret;
	}
}
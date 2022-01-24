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
 int /*<<< orphan*/  D_USBI ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC4(struct gspca_dev *gspca_dev, u16 index)
{
	struct usb_device *dev = gspca_dev->dev;
	int ret;

	if (gspca_dev->usb_err < 0)
		return 0;
	ret = FUNC2(dev, FUNC3(dev, 0),
			0x00,
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			0x00,
			index,
			gspca_dev->usb_buf, 1,
			500);

	FUNC0(gspca_dev, D_USBI, "reg_r 0x%x=0x%02x\n",
		  index, gspca_dev->usb_buf[0]);
	if (ret < 0) {
		FUNC1("reg_r 0x%x err %d\n", index, ret);
		gspca_dev->usb_err = ret;
		return 0;
	}

	return gspca_dev->usb_buf[0];
}
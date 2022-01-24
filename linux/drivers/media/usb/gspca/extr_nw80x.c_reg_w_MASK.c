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
struct gspca_dev {int usb_err; int /*<<< orphan*/  usb_buf; struct usb_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBO ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/  const,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gspca_dev *gspca_dev,
			u16 index,
			const u8 *data,
			int len)
{
	struct usb_device *dev = gspca_dev->dev;
	int ret;

	if (gspca_dev->usb_err < 0)
		return;
	if (len == 1)
		FUNC0(gspca_dev, D_USBO, "SET 00 0000 %04x %02x\n",
			  index, *data);
	else
		FUNC0(gspca_dev, D_USBO, "SET 00 0000 %04x %02x %02x ...\n",
			  index, *data, data[1]);
	FUNC1(gspca_dev->usb_buf, data, len);
	ret = FUNC3(dev, FUNC4(dev, 0),
			0x00,
			USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			0x00,		/* value */
			index,
			gspca_dev->usb_buf,
			len,
			500);
	if (ret < 0) {
		FUNC2("reg_w err %d\n", ret);
		gspca_dev->usb_err = ret;
	}
}
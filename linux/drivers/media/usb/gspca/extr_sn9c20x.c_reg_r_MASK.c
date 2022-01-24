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
typedef  int u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int usb_err; int /*<<< orphan*/  usb_buf; struct usb_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_BUF_SZ ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gspca_dev *gspca_dev, u16 reg, u16 length)
{
	struct usb_device *dev = gspca_dev->dev;
	int result;

	if (gspca_dev->usb_err < 0)
		return;
	result = FUNC3(dev, FUNC4(dev, 0),
			0x00,
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
			reg,
			0x00,
			gspca_dev->usb_buf,
			length,
			500);
	if (FUNC2(result < 0 || result != length)) {
		FUNC1("Read register %02x failed %d\n", reg, result);
		gspca_dev->usb_err = result;
		/*
		 * Make sure the buffer is zeroed to avoid uninitialized
		 * values.
		 */
		FUNC0(gspca_dev->usb_buf, 0, USB_BUF_SZ);
	}
}
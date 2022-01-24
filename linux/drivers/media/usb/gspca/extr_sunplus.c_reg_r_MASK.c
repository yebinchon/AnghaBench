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
typedef  scalar_t__ u16 ;
struct gspca_dev {int usb_err; int /*<<< orphan*/ * usb_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ USB_BUF_SZ ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gspca_dev *gspca_dev,
		  u8 req,
		  u16 index,
		  u16 len)
{
	int ret;

	if (len > USB_BUF_SZ) {
		FUNC0(gspca_dev, "reg_r: buffer overflow\n");
		return;
	}
	if (gspca_dev->usb_err < 0)
		return;
	ret = FUNC3(gspca_dev->dev,
			FUNC4(gspca_dev->dev, 0),
			req,
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			0,		/* value */
			index,
			len ? gspca_dev->usb_buf : NULL, len,
			500);
	if (ret < 0) {
		FUNC2("reg_r err %d\n", ret);
		gspca_dev->usb_err = ret;
		/*
		 * Make sure the buffer is zeroed to avoid uninitialized
		 * values.
		 */
		FUNC1(gspca_dev->usb_buf, 0, USB_BUF_SZ);
	}
}
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
typedef  int /*<<< orphan*/  u16 ;
struct gspca_dev {int usb_err; int /*<<< orphan*/ * usb_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBI ; 
 int USB_BUF_SZ ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct gspca_dev *gspca_dev,
		  u16 value, int len)
{
	int ret;

	if (gspca_dev->usb_err < 0)
		return;
	if (len > USB_BUF_SZ) {
		FUNC1(gspca_dev, "reg_r: buffer overflow\n");
		return;
	}

	ret = FUNC4(gspca_dev->dev,
			FUNC5(gspca_dev->dev, 0),
			0,
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
			value, 0,
			gspca_dev->usb_buf, len,
			500);
	FUNC0(gspca_dev, D_USBI, "reg_r [%02x] -> %02x\n",
		  value, gspca_dev->usb_buf[0]);
	if (ret < 0) {
		FUNC3("reg_r err %d\n", ret);
		gspca_dev->usb_err = ret;
		/*
		 * Make sure the buffer is zeroed to avoid uninitialized
		 * values.
		 */
		FUNC2(gspca_dev->usb_buf, 0, USB_BUF_SZ);
	}
}
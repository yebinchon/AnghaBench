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
struct gspca_dev {int usb_err; int /*<<< orphan*/  usb_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBO ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct gspca_dev *gspca_dev,
		   const u8 *buffer)
{
	int ret;

	if (gspca_dev->usb_err < 0)
		return;
	FUNC0(gspca_dev, D_USBO, "i2c_w8 [%02x] = %02x ..\n",
		  buffer[2], buffer[3]);
	FUNC1(gspca_dev->usb_buf, buffer, 8);
	ret = FUNC4(gspca_dev->dev,
			FUNC5(gspca_dev->dev, 0),
			0x08,
			USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
			0x08, 0,		/* value, index */
			gspca_dev->usb_buf, 8,
			500);
	FUNC2(2);
	if (ret < 0) {
		FUNC3("i2c_w8 err %d\n", ret);
		gspca_dev->usb_err = ret;
	}
}
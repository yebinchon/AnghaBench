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
struct gspca_dev {int usb_err; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBO ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gspca_dev *gspca_dev, u16 value, u16 index)
{
	int ret;

	if (gspca_dev->usb_err < 0)
		return;
	FUNC0(gspca_dev, D_USBO, "reg_w v: %04x i: %04x\n", value, index);
	ret = FUNC3(gspca_dev->dev,
			FUNC4(gspca_dev->dev, 0),
			0x0c,			/* request */
			USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			value, index, NULL, 0,
			500);
	FUNC1(30);
	if (ret < 0) {
		FUNC2("reg_w %04x %04x failed %d\n", value, index, ret);
		gspca_dev->usb_err = ret;
	}
}
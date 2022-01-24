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
struct TYPE_2__ {int usb_err; int* usb_buf; int /*<<< orphan*/  dev; } ;
struct sd {TYPE_1__ gspca_dev; } ;
struct gspca_dev {int /*<<< orphan*/  usb_buf; } ;

/* Variables and functions */
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sd *sd,
		  u16 index)
{
	struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
	int ret;

	if (sd->gspca_dev.usb_err < 0)
		return -1;

	/* Avoid things going to fast for the bridge with a xhci host */
	FUNC2(150);
	ret = FUNC3(sd->gspca_dev.dev,
			FUNC4(sd->gspca_dev.dev, 0),
			1,			/* REQ_IO */
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			0, index, sd->gspca_dev.usb_buf, 8, 500);

	if (ret >= 0) {
		ret = sd->gspca_dev.usb_buf[0];
	} else {
		FUNC0(gspca_dev, "reg_r8 %02x failed %d\n", index, ret);
		sd->gspca_dev.usb_err = ret;
		/*
		 * Make sure the buffer is zeroed to avoid uninitialized
		 * values.
		 */
		FUNC1(gspca_dev->usb_buf, 0, 8);
	}

	return ret;
}
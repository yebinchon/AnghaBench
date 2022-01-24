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
struct TYPE_2__ {int usb_err; int* usb_buf; int /*<<< orphan*/  dev; } ;
struct sd {TYPE_1__ gspca_dev; } ;

/* Variables and functions */
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int W9968CF_I2C_BUS_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sd *sd)
{
	int ret;

	if (sd->gspca_dev.usb_err < 0)
		return -1;

	/* Avoid things going to fast for the bridge with a xhci host */
	FUNC2(150);

	/* We don't use reg_r here, as the w9968cf is special and has 16
	   bit registers instead of 8 bit */
	ret = FUNC3(sd->gspca_dev.dev,
			FUNC4(sd->gspca_dev.dev, 0),
			1,
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			0, 0x01, sd->gspca_dev.usb_buf, 2, 500);
	if (ret >= 0) {
		ret = sd->gspca_dev.usb_buf[0] |
		      (sd->gspca_dev.usb_buf[1] << 8);
	} else {
		FUNC1("Read SB reg [01] failed\n");
		sd->gspca_dev.usb_err = ret;
		/*
		 * Make sure the buffer is zeroed to avoid uninitialized
		 * values.
		 */
		FUNC0(sd->gspca_dev.usb_buf, 0, 2);
	}

	FUNC2(W9968CF_I2C_BUS_DELAY);

	return ret;
}
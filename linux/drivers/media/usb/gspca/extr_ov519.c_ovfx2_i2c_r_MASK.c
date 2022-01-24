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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int usb_err; int* usb_buf; int /*<<< orphan*/  dev; } ;
struct sd {TYPE_1__ gspca_dev; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBI ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,char*,scalar_t__,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sd *sd, u8 reg)
{
	struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
	int ret;

	if (sd->gspca_dev.usb_err < 0)
		return -1;

	ret = FUNC2(sd->gspca_dev.dev,
			FUNC3(sd->gspca_dev.dev, 0),
			0x03,
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			0, (u16) reg, sd->gspca_dev.usb_buf, 1, 500);

	if (ret >= 0) {
		ret = sd->gspca_dev.usb_buf[0];
		FUNC0(gspca_dev, D_USBI, "ovfx2_i2c_r %02x %02x\n",
			  reg, ret);
	} else {
		FUNC1(gspca_dev, "ovfx2_i2c_r %02x failed %d\n", reg, ret);
		sd->gspca_dev.usb_err = ret;
	}

	return ret;
}
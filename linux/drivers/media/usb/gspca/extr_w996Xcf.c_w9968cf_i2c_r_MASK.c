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
typedef  int u8 ;
struct TYPE_2__ {scalar_t__ usb_err; } ;
struct sd {int sensor_addr; TYPE_1__ gspca_dev; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBI ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*) ; 
 int /*<<< orphan*/  FUNC3 (struct sd*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct sd*) ; 
 int /*<<< orphan*/  FUNC5 (struct sd*) ; 
 int /*<<< orphan*/  FUNC6 (struct sd*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sd*) ; 
 int /*<<< orphan*/  FUNC8 (struct sd*,int) ; 

__attribute__((used)) static int FUNC9(struct sd *sd, u8 reg)
{
	struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
	int ret = 0;
	u8 value;

	/* Fast serial bus data control disable */
	FUNC8(sd, 0x0013); /* don't change ! */

	FUNC4(sd);
	FUNC6(sd, sd->sensor_addr);
	FUNC2(sd);
	FUNC6(sd, reg);
	FUNC2(sd);
	FUNC5(sd);
	FUNC4(sd);
	FUNC6(sd, sd->sensor_addr + 1);
	FUNC2(sd);
	FUNC3(sd, &value);
	/* signal we don't want to read anymore, the v4l1 driver used to
	   send an ack here which is very wrong! (and then fixed
	   the issues this gave by retrying reads) */
	FUNC7(sd);
	FUNC5(sd);

	/* Fast serial bus data control re-enable */
	FUNC8(sd, 0x0030);

	if (sd->gspca_dev.usb_err >= 0) {
		ret = value;
		FUNC0(gspca_dev, D_USBI, "i2c [0x%02X] -> 0x%02X\n",
			  reg, value);
	} else
		FUNC1(gspca_dev, "i2c read [0x%02x] failed\n", reg);

	return ret;
}
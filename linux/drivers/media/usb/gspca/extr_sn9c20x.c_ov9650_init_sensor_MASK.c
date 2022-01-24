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
struct sd {int hstart; int vstart; } ;
struct gspca_dev {int /*<<< orphan*/  usb_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ov9650_init ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void FUNC6(struct gspca_dev *gspca_dev)
{
	u16 id;
	struct sd *sd = (struct sd *) gspca_dev;

	FUNC1(gspca_dev, 0x1c, &id);
	if (gspca_dev->usb_err < 0)
		return;

	if (id != 0x7fa2) {
		FUNC5("sensor id for ov9650 doesn't match (0x%04x)\n", id);
		gspca_dev->usb_err = -ENODEV;
		return;
	}

	FUNC2(gspca_dev, 0x12, 0x80);		/* sensor reset */
	FUNC4(200);
	FUNC3(gspca_dev, ov9650_init, FUNC0(ov9650_init));
	if (gspca_dev->usb_err < 0)
		FUNC5("OV9650 sensor initialization failed\n");
	sd->hstart = 1;
	sd->vstart = 7;
}
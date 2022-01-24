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
struct sd {int i2c_addr; int hstart; int vstart; int /*<<< orphan*/  sensor; } ;
struct gspca_dev {int /*<<< orphan*/  usb_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  SENSOR_MT9V011 ; 
 int /*<<< orphan*/  SENSOR_MT9V111 ; 
 int /*<<< orphan*/  SENSOR_MT9V112 ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt9v011_init ; 
 int /*<<< orphan*/  mt9v111_init ; 
 int /*<<< orphan*/  mt9v112_init ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	u16 value;

	sd->i2c_addr = 0x5d;
	FUNC1(gspca_dev, 0xff, &value);
	if (gspca_dev->usb_err >= 0
	 && value == 0x8243) {
		FUNC3(gspca_dev, mt9v011_init, FUNC0(mt9v011_init));
		if (gspca_dev->usb_err < 0) {
			FUNC4("MT9V011 sensor initialization failed\n");
			return;
		}
		sd->hstart = 2;
		sd->vstart = 2;
		sd->sensor = SENSOR_MT9V011;
		FUNC5("MT9V011 sensor detected\n");
		return;
	}

	gspca_dev->usb_err = 0;
	sd->i2c_addr = 0x5c;
	FUNC2(gspca_dev, 0x01, 0x0004);
	FUNC1(gspca_dev, 0xff, &value);
	if (gspca_dev->usb_err >= 0
	 && value == 0x823a) {
		FUNC3(gspca_dev, mt9v111_init, FUNC0(mt9v111_init));
		if (gspca_dev->usb_err < 0) {
			FUNC4("MT9V111 sensor initialization failed\n");
			return;
		}
		sd->hstart = 2;
		sd->vstart = 2;
		sd->sensor = SENSOR_MT9V111;
		FUNC5("MT9V111 sensor detected\n");
		return;
	}

	gspca_dev->usb_err = 0;
	sd->i2c_addr = 0x5d;
	FUNC2(gspca_dev, 0xf0, 0x0000);
	if (gspca_dev->usb_err < 0) {
		gspca_dev->usb_err = 0;
		sd->i2c_addr = 0x48;
		FUNC2(gspca_dev, 0xf0, 0x0000);
	}
	FUNC1(gspca_dev, 0x00, &value);
	if (gspca_dev->usb_err >= 0
	 && value == 0x1229) {
		FUNC3(gspca_dev, mt9v112_init, FUNC0(mt9v112_init));
		if (gspca_dev->usb_err < 0) {
			FUNC4("MT9V112 sensor initialization failed\n");
			return;
		}
		sd->hstart = 6;
		sd->vstart = 2;
		sd->sensor = SENSOR_MT9V112;
		FUNC5("MT9V112 sensor detected\n");
		return;
	}

	gspca_dev->usb_err = -ENODEV;
}
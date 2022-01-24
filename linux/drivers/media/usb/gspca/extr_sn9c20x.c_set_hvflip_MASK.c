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
typedef  int u8 ;
typedef  int u16 ;
struct sd {int flags; int sensor; int vstart; } ;
struct gspca_dev {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int FLIP_DETECT ; 
#define  SENSOR_HV7131R 135 
#define  SENSOR_MT9M111 134 
#define  SENSOR_MT9M112 133 
#define  SENSOR_MT9V011 132 
#define  SENSOR_MT9V111 131 
#define  SENSOR_MT9V112 130 
#define  SENSOR_OV7660 129 
#define  SENSOR_OV9650 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flip_dmi_table ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC6(struct gspca_dev *gspca_dev, s32 hflip, s32 vflip)
{
	u8 value, tslb;
	u16 value2;
	struct sd *sd = (struct sd *) gspca_dev;

	if ((sd->flags & FLIP_DETECT) && FUNC0(flip_dmi_table)) {
		hflip = !hflip;
		vflip = !vflip;
	}

	switch (sd->sensor) {
	case SENSOR_OV7660:
		value = 0x01;
		if (hflip)
			value |= 0x20;
		if (vflip) {
			value |= 0x10;
			sd->vstart = 2;
		} else {
			sd->vstart = 3;
		}
		FUNC5(gspca_dev, 0x1182, sd->vstart);
		FUNC3(gspca_dev, 0x1e, value);
		break;
	case SENSOR_OV9650:
		FUNC1(gspca_dev, 0x1e, &value);
		value &= ~0x30;
		tslb = 0x01;
		if (hflip)
			value |= 0x20;
		if (vflip) {
			value |= 0x10;
			tslb = 0x49;
		}
		FUNC3(gspca_dev, 0x1e, value);
		FUNC3(gspca_dev, 0x3a, tslb);
		break;
	case SENSOR_MT9V111:
	case SENSOR_MT9V011:
		FUNC2(gspca_dev, 0x20, &value2);
		value2 &= ~0xc0a0;
		if (hflip)
			value2 |= 0x8080;
		if (vflip)
			value2 |= 0x4020;
		FUNC4(gspca_dev, 0x20, value2);
		break;
	case SENSOR_MT9M112:
	case SENSOR_MT9M111:
	case SENSOR_MT9V112:
		FUNC2(gspca_dev, 0x20, &value2);
		value2 &= ~0x0003;
		if (hflip)
			value2 |= 0x0002;
		if (vflip)
			value2 |= 0x0001;
		FUNC4(gspca_dev, 0x20, value2);
		break;
	case SENSOR_HV7131R:
		FUNC1(gspca_dev, 0x01, &value);
		value &= ~0x03;
		if (vflip)
			value |= 0x01;
		if (hflip)
			value |= 0x02;
		FUNC3(gspca_dev, 0x01, value);
		break;
	}
}
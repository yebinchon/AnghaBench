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
struct sd {int i2c_addr; int flags; int sensor; } ;
struct gspca_dev {scalar_t__ usb_err; } ;

/* Variables and functions */
 int FUNC0 (int**) ; 
 scalar_t__ ENODEV ; 
 int LED_REVERSE ; 
#define  SENSOR_HV7131R 137 
#define  SENSOR_MT9M001 136 
#define  SENSOR_MT9M111 135 
#define  SENSOR_MT9M112 134 
#define  SENSOR_MT9VPRB 133 
#define  SENSOR_OV7660 132 
#define  SENSOR_OV7670 131 
#define  SENSOR_OV9650 130 
#define  SENSOR_OV9655 129 
#define  SENSOR_SOI968 128 
 int** bridge_init ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct gspca_dev*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct gspca_dev*) ; 

__attribute__((used)) static int FUNC15(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int i;
	u8 value;
	u8 i2c_init[9] = {
		0x80, sd->i2c_addr, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03
	};

	for (i = 0; i < FUNC0(bridge_init); i++) {
		value = bridge_init[i][1];
		FUNC12(gspca_dev, bridge_init[i][0], &value, 1);
		if (gspca_dev->usb_err < 0) {
			FUNC10("Device initialization failed\n");
			return gspca_dev->usb_err;
		}
	}

	if (sd->flags & LED_REVERSE)
		FUNC13(gspca_dev, 0x1006, 0x00);
	else
		FUNC13(gspca_dev, 0x1006, 0x20);

	FUNC12(gspca_dev, 0x10c0, i2c_init, 9);
	if (gspca_dev->usb_err < 0) {
		FUNC10("Device initialization failed\n");
		return gspca_dev->usb_err;
	}

	switch (sd->sensor) {
	case SENSOR_OV9650:
		FUNC8(gspca_dev);
		if (gspca_dev->usb_err < 0)
			break;
		FUNC11("OV9650 sensor detected\n");
		break;
	case SENSOR_OV9655:
		FUNC9(gspca_dev);
		if (gspca_dev->usb_err < 0)
			break;
		FUNC11("OV9655 sensor detected\n");
		break;
	case SENSOR_SOI968:
		FUNC14(gspca_dev);
		if (gspca_dev->usb_err < 0)
			break;
		FUNC11("SOI968 sensor detected\n");
		break;
	case SENSOR_OV7660:
		FUNC6(gspca_dev);
		if (gspca_dev->usb_err < 0)
			break;
		FUNC11("OV7660 sensor detected\n");
		break;
	case SENSOR_OV7670:
		FUNC7(gspca_dev);
		if (gspca_dev->usb_err < 0)
			break;
		FUNC11("OV7670 sensor detected\n");
		break;
	case SENSOR_MT9VPRB:
		FUNC5(gspca_dev);
		if (gspca_dev->usb_err < 0)
			break;
		FUNC11("MT9VPRB sensor detected\n");
		break;
	case SENSOR_MT9M111:
		FUNC3(gspca_dev);
		if (gspca_dev->usb_err < 0)
			break;
		FUNC11("MT9M111 sensor detected\n");
		break;
	case SENSOR_MT9M112:
		FUNC4(gspca_dev);
		if (gspca_dev->usb_err < 0)
			break;
		FUNC11("MT9M112 sensor detected\n");
		break;
	case SENSOR_MT9M001:
		FUNC2(gspca_dev);
		if (gspca_dev->usb_err < 0)
			break;
		break;
	case SENSOR_HV7131R:
		FUNC1(gspca_dev);
		if (gspca_dev->usb_err < 0)
			break;
		FUNC11("HV7131R sensor detected\n");
		break;
	default:
		FUNC10("Unsupported sensor\n");
		gspca_dev->usb_err = -ENODEV;
	}
	return gspca_dev->usb_err;
}
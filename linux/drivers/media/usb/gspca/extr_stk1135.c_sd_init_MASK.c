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
struct sd {int sensor_page; } ;
struct gspca_dev {int usb_err; } ;

/* Variables and functions */
 scalar_t__ STK1135_REG_ASIC ; 
 scalar_t__ STK1135_REG_GCTRL ; 
 scalar_t__ STK1135_REG_ICTRL ; 
 scalar_t__ STK1135_REG_RMCTL ; 
 scalar_t__ STK1135_REG_SICTL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,scalar_t__,int) ; 
 int FUNC2 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	u16 sensor_id;
	char *sensor_name;
	struct sd *sd = (struct sd *) gspca_dev;

	/* set GPIO3,4,5,6 direction to output */
	FUNC1(gspca_dev, STK1135_REG_GCTRL + 2, 0x78);
	/* enable sensor (GPIO5) */
	FUNC1(gspca_dev, STK1135_REG_GCTRL, (1 << 5));
	/* disable ROM interface */
	FUNC1(gspca_dev, STK1135_REG_GCTRL + 3, 0x80);
	/* enable interrupts from GPIO8 (flip sensor) and GPIO9 (???) */
	FUNC1(gspca_dev, STK1135_REG_ICTRL + 1, 0x00);
	FUNC1(gspca_dev, STK1135_REG_ICTRL + 3, 0x03);
	/* enable remote wakeup from GPIO9 (???) */
	FUNC1(gspca_dev, STK1135_REG_RMCTL + 1, 0x00);
	FUNC1(gspca_dev, STK1135_REG_RMCTL + 3, 0x02);

	/* reset serial interface */
	FUNC1(gspca_dev, STK1135_REG_SICTL, 0x80);
	FUNC1(gspca_dev, STK1135_REG_SICTL, 0x00);
	/* set sensor address */
	FUNC1(gspca_dev, STK1135_REG_SICTL + 3, 0xba);
	/* disable alt 2-wire serial interface */
	FUNC1(gspca_dev, STK1135_REG_ASIC + 3, 0x00);

	FUNC4(gspca_dev);

	/* read sensor ID */
	sd->sensor_page = 0xff;
	sensor_id = FUNC2(gspca_dev, 0x000);

	switch (sensor_id) {
	case 0x148c:
		sensor_name = "MT9M112";
		break;
	default:
		sensor_name = "unknown";
	}
	FUNC0("Detected sensor type %s (0x%x)\n", sensor_name, sensor_id);

	FUNC3(gspca_dev);

	return gspca_dev->usb_err;
}
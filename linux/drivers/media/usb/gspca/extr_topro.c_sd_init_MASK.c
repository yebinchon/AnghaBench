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
struct sd {scalar_t__ bridge; int sensor; } ;
struct gspca_dev {int* usb_buf; } ;
struct cmd {int member_1; int /*<<< orphan*/  const member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmd const*) ; 
 scalar_t__ BRIDGE_TP6800 ; 
 scalar_t__ BRIDGE_TP6810 ; 
 int /*<<< orphan*/  D_PROBE ; 
 int SENSOR_CX0342 ; 
 void* SENSOR_SOI763A ; 
#define  TP6800_R10_SIF_TYPE 134 
#define  TP6800_R11_SIF_CONTROL 133 
#define  TP6800_R15_GPIO_PU 132 
#define  TP6800_R16_GPIO_PD 131 
#define  TP6800_R17_GPIO_IO 130 
#define  TP6800_R18_GPIO_DATA 129 
#define  TP6800_R2F_TIMING_CFG 128 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 scalar_t__ force_sensor ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*,struct cmd const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gspca_dev*) ; 

__attribute__((used)) static int FUNC11(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	static const struct cmd tp6800_preinit[] = {
		{TP6800_R10_SIF_TYPE, 0x01},	/* sif */
		{TP6800_R11_SIF_CONTROL, 0x01},
		{TP6800_R15_GPIO_PU, 0x9f},
		{TP6800_R16_GPIO_PD, 0x9f},
		{TP6800_R17_GPIO_IO, 0x80},
		{TP6800_R18_GPIO_DATA, 0x40},	/* LED off */
	};
	static const struct cmd tp6810_preinit[] = {
		{TP6800_R2F_TIMING_CFG, 0x2f},
		{TP6800_R15_GPIO_PU, 0x6f},
		{TP6800_R16_GPIO_PD, 0x40},
		{TP6800_R17_GPIO_IO, 0x9f},
		{TP6800_R18_GPIO_DATA, 0xc1},	/* LED off */
	};

	if (sd->bridge == BRIDGE_TP6800)
		FUNC8(gspca_dev, tp6800_preinit,
				FUNC0(tp6800_preinit));
	else
		FUNC8(gspca_dev, tp6810_preinit,
				FUNC0(tp6810_preinit));
	FUNC3(15);
	FUNC7(gspca_dev, TP6800_R18_GPIO_DATA);
	FUNC2(gspca_dev, D_PROBE, "gpio: %02x\n", gspca_dev->usb_buf[0]);
/* values:
 *	0x80: snapshot button
 *	0x40: LED
 *	0x20: (bridge / sensor) reset for tp6810 ?
 *	0x07: sensor type ?
 */

	/* guess the sensor type */
	if (force_sensor >= 0) {
		sd->sensor = force_sensor;
	} else {
		if (sd->bridge == BRIDGE_TP6800) {
/*fixme: not sure this is working*/
			switch (gspca_dev->usb_buf[0] & 0x07) {
			case 0:
				sd->sensor = SENSOR_SOI763A;
				break;
			case 1:
				sd->sensor = SENSOR_CX0342;
				break;
			}
		} else {
			int sensor;

			sensor = FUNC6(gspca_dev);
			if (sensor < 0) {
				FUNC5("Unknown sensor %d - forced to soi763a\n",
					-sensor);
				sensor = SENSOR_SOI763A;
			}
			sd->sensor = sensor;
		}
	}
	if (sd->sensor == SENSOR_SOI763A) {
		FUNC4("Sensor soi763a\n");
		if (sd->bridge == BRIDGE_TP6810) {
			FUNC10(gspca_dev);
		}
	} else {
		FUNC4("Sensor cx0342\n");
		if (sd->bridge == BRIDGE_TP6810) {
			FUNC1(gspca_dev);
		}
	}

	FUNC9(gspca_dev, 0);
	return 0;
}
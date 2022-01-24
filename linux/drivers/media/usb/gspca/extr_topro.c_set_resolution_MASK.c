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
struct sd {scalar_t__ sensor; int /*<<< orphan*/  jpegqual; int /*<<< orphan*/  gamma; } ;
struct TYPE_2__ {int width; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CX0342_AUTO_ADC_CALIB ; 
 int /*<<< orphan*/  CX0342_EXPO_LINE_H ; 
 int /*<<< orphan*/  CX0342_EXPO_LINE_L ; 
 int /*<<< orphan*/  CX0342_SYS_CTRL_0 ; 
 size_t SENSOR_CX0342 ; 
 scalar_t__ SENSOR_SOI763A ; 
 int /*<<< orphan*/  TP6800_R21_ENDP_1_CTL ; 
 int /*<<< orphan*/  TP6800_R3F_FRAME_RATE ; 
 int /*<<< orphan*/  TP6800_R5D_DEMOSAIC_CFG ; 
 int /*<<< orphan*/  TP6800_R78_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * color_gain ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	FUNC4(gspca_dev, TP6800_R21_ENDP_1_CTL, 0x00);
	if (gspca_dev->pixfmt.width == 320) {
		FUNC4(gspca_dev, TP6800_R3F_FRAME_RATE, 0x06);
		FUNC3(100);
		FUNC2(gspca_dev, CX0342_AUTO_ADC_CALIB, 0x01);
		FUNC3(100);
		FUNC4(gspca_dev, TP6800_R21_ENDP_1_CTL, 0x03);
		FUNC4(gspca_dev, TP6800_R78_FORMAT, 0x01);	/* qvga */
		FUNC4(gspca_dev, TP6800_R5D_DEMOSAIC_CFG, 0x0d);
		FUNC2(gspca_dev, CX0342_EXPO_LINE_L, 0x37);
		FUNC2(gspca_dev, CX0342_EXPO_LINE_H, 0x01);
	} else {
		FUNC4(gspca_dev, TP6800_R3F_FRAME_RATE, 0x05);
		FUNC3(100);
		FUNC2(gspca_dev, CX0342_AUTO_ADC_CALIB, 0x01);
		FUNC3(100);
		FUNC4(gspca_dev, TP6800_R21_ENDP_1_CTL, 0x03);
		FUNC4(gspca_dev, TP6800_R78_FORMAT, 0x00);	/* vga */
		FUNC4(gspca_dev, TP6800_R5D_DEMOSAIC_CFG, 0x09);
		FUNC2(gspca_dev, CX0342_EXPO_LINE_L, 0xcf);
		FUNC2(gspca_dev, CX0342_EXPO_LINE_H, 0x00);
	}
	FUNC2(gspca_dev, CX0342_SYS_CTRL_0, 0x01);
	FUNC1(gspca_dev, 0x03, color_gain[SENSOR_CX0342],
				FUNC0(color_gain[0]));
	FUNC5(gspca_dev, FUNC7(sd->gamma));
	if (sd->sensor == SENSOR_SOI763A)
		FUNC6(gspca_dev, FUNC7(sd->jpegqual));
}
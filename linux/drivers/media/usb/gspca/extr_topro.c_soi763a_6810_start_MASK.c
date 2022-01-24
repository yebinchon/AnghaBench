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
struct sd {scalar_t__ sensor; int /*<<< orphan*/  red; int /*<<< orphan*/  blue; int /*<<< orphan*/  sharpness; int /*<<< orphan*/  gamma; } ;
struct gspca_dev {int alt; int /*<<< orphan*/  gain; int /*<<< orphan*/  exposure; scalar_t__ curr_mode; } ;
struct cmd {int const member_0; int member_1; } ;

/* Variables and functions */
 int FUNC0 (struct cmd const*) ; 
 scalar_t__ SENSOR_CX0342 ; 
 size_t SENSOR_SOI763A ; 
#define  TP6800_R31_PIXEL_START 135 
#define  TP6800_R32_PIXEL_END_L 134 
#define  TP6800_R33_PIXEL_END_H 133 
#define  TP6800_R34_LINE_START 132 
#define  TP6800_R35_LINE_END_L 131 
#define  TP6800_R36_LINE_END_H 130 
 int TP6800_R3F_FRAME_RATE ; 
 int TP6800_R78_FORMAT ; 
#define  TP6800_R79_QUALITY 129 
#define  TP6800_R7A_BLK_THRLD 128 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,struct cmd const*,int) ; 
 struct cmd const** color_gain ; 
 struct cmd const* color_null ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,struct cmd const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 struct cmd const* tp6810_bridge_start ; 
 struct cmd const* tp6810_ov_init_common ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	static const struct cmd bridge_init_2[] = {
		{TP6800_R7A_BLK_THRLD, 0x00},
		{TP6800_R79_QUALITY, 0x04},
		{TP6800_R79_QUALITY, 0x01},
	};
	static const struct cmd bridge_init_3[] = {
		{TP6800_R31_PIXEL_START, 0x20},
		{TP6800_R32_PIXEL_END_L, 0x9f},
		{TP6800_R33_PIXEL_END_H, 0x02},
		{TP6800_R34_LINE_START, 0x13},
		{TP6800_R35_LINE_END_L, 0xf8},
		{TP6800_R36_LINE_END_H, 0x01},
	};
	static const struct cmd bridge_init_6[] = {
		{0x08, 0xff},
		{0x09, 0xff},
		{0x0a, 0x5f},
		{0x0b, 0x80},
	};

	FUNC2(gspca_dev, 0x22, gspca_dev->alt);
	FUNC1(gspca_dev, 0x03, color_null, sizeof color_null);
	FUNC2(gspca_dev, 0x59, 0x40);
	if (sd->sensor == SENSOR_CX0342)
		FUNC5(gspca_dev, FUNC8(gspca_dev->exposure),
			FUNC8(gspca_dev->gain),
			FUNC8(sd->blue),
			FUNC8(sd->red));
	else
		FUNC5(gspca_dev, FUNC8(gspca_dev->exposure),
			FUNC8(gspca_dev->gain), 0, 0);
	FUNC3(gspca_dev, bridge_init_2, FUNC0(bridge_init_2));
	FUNC3(gspca_dev, tp6810_ov_init_common,
			FUNC0(tp6810_ov_init_common));
	FUNC3(gspca_dev, bridge_init_3, FUNC0(bridge_init_3));
	if (gspca_dev->curr_mode) {
		FUNC2(gspca_dev, 0x4a, 0x7f);
		FUNC2(gspca_dev, 0x07, 0x05);
		FUNC2(gspca_dev, TP6800_R78_FORMAT, 0x00);	/* vga */
	} else {
		FUNC2(gspca_dev, 0x4a, 0xff);
		FUNC2(gspca_dev, 0x07, 0x85);
		FUNC2(gspca_dev, TP6800_R78_FORMAT, 0x01);	/* qvga */
	}
	FUNC6(gspca_dev, FUNC8(sd->gamma));
	FUNC3(gspca_dev, tp6810_bridge_start,
			FUNC0(tp6810_bridge_start));

	if (gspca_dev->curr_mode) {
		FUNC2(gspca_dev, 0x4f, 0x00);
		FUNC2(gspca_dev, 0x4e, 0x7c);
	}

	FUNC2(gspca_dev, 0x00, 0x00);

	FUNC7(gspca_dev, FUNC8(sd->sharpness));
	FUNC1(gspca_dev, 0x03, color_gain[SENSOR_SOI763A],
				FUNC0(color_gain[0]));
	FUNC4(gspca_dev, 1);
	FUNC2(gspca_dev, TP6800_R3F_FRAME_RATE, 0xf0);
	if (sd->sensor == SENSOR_CX0342)
		FUNC5(gspca_dev, FUNC8(gspca_dev->exposure),
			FUNC8(gspca_dev->gain),
			FUNC8(sd->blue),
			FUNC8(sd->red));
	else
		FUNC5(gspca_dev, FUNC8(gspca_dev->exposure),
			FUNC8(gspca_dev->gain), 0, 0);
	FUNC3(gspca_dev, bridge_init_6, FUNC0(bridge_init_6));
}
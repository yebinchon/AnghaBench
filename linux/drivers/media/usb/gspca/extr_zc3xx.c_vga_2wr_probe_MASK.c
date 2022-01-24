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
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  SENSOR_PAS202B ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*,int) ; 

__attribute__((used)) static int FUNC8(struct gspca_dev *gspca_dev)
{
	u16 retword;

	FUNC7(gspca_dev, 0x00);	/* HV7131B */
	FUNC2(gspca_dev, 0x01, 0xaa, 0x00);
	retword = FUNC1(gspca_dev, 0x01);
	if (retword != 0)
		return 0x00;			/* HV7131B */

	FUNC7(gspca_dev, 0x04);	/* CS2102 */
	FUNC2(gspca_dev, 0x01, 0xaa, 0x00);
	retword = FUNC1(gspca_dev, 0x01);
	if (retword != 0)
		return 0x04;			/* CS2102 */

	FUNC7(gspca_dev, 0x06);	/* OmniVision */
	FUNC5(gspca_dev, 0x08, 0x008d);
	FUNC2(gspca_dev, 0x11, 0xaa, 0x00);
	retword = FUNC1(gspca_dev, 0x11);
	if (retword != 0) {
		/* (should have returned 0xaa) --> Omnivision? */
		/* reg_r 0x10 -> 0x06 -->  */
		goto ov_check;
	}

	FUNC7(gspca_dev, 0x08);	/* HDCS2020 */
	FUNC2(gspca_dev, 0x1c, 0x00, 0x00);
	FUNC2(gspca_dev, 0x15, 0xaa, 0x00);
	retword = FUNC1(gspca_dev, 0x15);
	if (retword != 0)
		return 0x08;			/* HDCS2020 */

	FUNC7(gspca_dev, 0x0a);	/* PB0330 */
	FUNC2(gspca_dev, 0x07, 0xaa, 0xaa);
	retword = FUNC1(gspca_dev, 0x07);
	if (retword != 0)
		return 0x0a;			/* PB0330 */
	retword = FUNC1(gspca_dev, 0x03);
	if (retword != 0)
		return 0x0a;			/* PB0330 ?? */
	retword = FUNC1(gspca_dev, 0x04);
	if (retword != 0)
		return 0x0a;			/* PB0330 ?? */

	FUNC7(gspca_dev, 0x0c);	/* ICM105A */
	FUNC2(gspca_dev, 0x01, 0x11, 0x00);
	retword = FUNC1(gspca_dev, 0x01);
	if (retword != 0)
		return 0x0c;			/* ICM105A */

	FUNC7(gspca_dev, 0x0e);	/* PAS202BCB */
	FUNC5(gspca_dev, 0x08, 0x008d);
	FUNC2(gspca_dev, 0x03, 0xaa, 0x00);
	FUNC3(50);
	retword = FUNC1(gspca_dev, 0x03);
	if (retword != 0) {
		FUNC6(gspca_dev, SENSOR_PAS202B);
		return 0x0e;			/* PAS202BCB */
	}

	FUNC7(gspca_dev, 0x02);	/* TAS5130C */
	FUNC2(gspca_dev, 0x01, 0xaa, 0x00);
	retword = FUNC1(gspca_dev, 0x01);
	if (retword != 0)
		return 0x02;			/* TAS5130C */
ov_check:
	FUNC4(gspca_dev, 0x0010);		/* ?? */
	FUNC4(gspca_dev, 0x0010);

	FUNC5(gspca_dev, 0x01, 0x0000);
	FUNC5(gspca_dev, 0x01, 0x0001);
	FUNC5(gspca_dev, 0x06, 0x0010);		/* OmniVision */
	FUNC5(gspca_dev, 0xa1, 0x008b);
	FUNC5(gspca_dev, 0x08, 0x008d);
	FUNC3(500);
	FUNC5(gspca_dev, 0x01, 0x0012);
	FUNC2(gspca_dev, 0x12, 0x80, 0x00);	/* sensor reset */
	retword = FUNC1(gspca_dev, 0x0a) << 8;
	retword |= FUNC1(gspca_dev, 0x0b);
	FUNC0(gspca_dev, D_PROBE, "probe 2wr ov vga 0x%04x\n", retword);
	switch (retword) {
	case 0x7631:				/* OV7630C */
		FUNC5(gspca_dev, 0x06, 0x0010);
		break;
	case 0x7620:				/* OV7620 */
	case 0x7648:				/* OV7648 */
		break;
	default:
		return -1;			/* not OmniVision */
	}
	return retword;
}
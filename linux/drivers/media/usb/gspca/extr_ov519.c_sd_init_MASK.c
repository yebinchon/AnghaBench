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
struct TYPE_2__ {int curr_mode; } ;
struct sd {int bridge; int sensor; TYPE_1__ gspca_dev; int /*<<< orphan*/  sif; } ;
struct cam {void* nmodes; void* cam_mode; } ;
struct gspca_dev {int usb_err; struct cam cam; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
#define  BRIDGE_OV511 148 
#define  BRIDGE_OV511PLUS 147 
#define  BRIDGE_OV518 146 
#define  BRIDGE_OV518PLUS 145 
#define  BRIDGE_OV519 144 
#define  BRIDGE_OVFX2 143 
#define  BRIDGE_W9968CF 142 
 int EINVAL ; 
 int /*<<< orphan*/  OV519_R57_SNAPSHOT ; 
 int /*<<< orphan*/  OV6xx0_SID ; 
 int /*<<< orphan*/  OV7670_COM7_RESET ; 
 int /*<<< orphan*/  OV7670_R12_COM7 ; 
 int /*<<< orphan*/  OV7xx0_SID ; 
 int /*<<< orphan*/  OV8xx0_SID ; 
 int /*<<< orphan*/  OV_HIRES_SID ; 
#define  SEN_OV2610 141 
#define  SEN_OV2610AE 140 
#define  SEN_OV3610 139 
#define  SEN_OV6620 138 
#define  SEN_OV6630 137 
#define  SEN_OV66308AF 136 
#define  SEN_OV7620 135 
#define  SEN_OV7620AE 134 
#define  SEN_OV7640 133 
#define  SEN_OV7648 132 
#define  SEN_OV7660 131 
#define  SEN_OV7670 130 
#define  SEN_OV8610 129 
#define  SEN_OV9600 128 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sd*,int,int,int) ; 
 void* init_519_ov7660 ; 
 scalar_t__ FUNC4 (struct sd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* norm_2610 ; 
 void* norm_2610ae ; 
 void* norm_3620b ; 
 void* norm_6x20 ; 
 void* norm_6x30 ; 
 void* norm_7610 ; 
 void* norm_7620 ; 
 void* norm_7640 ; 
 void* norm_7660 ; 
 void* norm_7670 ; 
 void* norm_8610 ; 
 void* norm_9600 ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*) ; 
 void* ov511_sif_mode ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*) ; 
 void* ov518_sif_mode ; 
 int /*<<< orphan*/  FUNC8 (struct sd*) ; 
 int /*<<< orphan*/  FUNC9 (struct sd*) ; 
 int /*<<< orphan*/  FUNC10 (struct sd*) ; 
 void* ov519_sif_mode ; 
 int /*<<< orphan*/  FUNC11 (struct sd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sd*) ; 
 int /*<<< orphan*/  FUNC13 (struct sd*) ; 
 int /*<<< orphan*/  FUNC14 (struct sd*) ; 
 int /*<<< orphan*/  FUNC15 (struct sd*) ; 
 int /*<<< orphan*/  FUNC16 (struct sd*) ; 
 int /*<<< orphan*/  FUNC17 (struct sd*) ; 
 int /*<<< orphan*/  FUNC18 (struct sd*) ; 
 void* ovfx2_ov2610_mode ; 
 void* ovfx2_ov3610_mode ; 
 void* ovfx2_ov9600_mode ; 
 int /*<<< orphan*/  FUNC19 (struct sd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct sd*) ; 
 int /*<<< orphan*/  FUNC22 (struct sd*) ; 
 void* w9968cf_vga_mode ; 
 int /*<<< orphan*/  FUNC23 (struct sd*,void*,void*) ; 
 int /*<<< orphan*/  FUNC24 (struct sd*,void*,void*) ; 

__attribute__((used)) static int FUNC25(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	struct cam *cam = &gspca_dev->cam;

	switch (sd->bridge) {
	case BRIDGE_OV511:
	case BRIDGE_OV511PLUS:
		FUNC6(gspca_dev);
		break;
	case BRIDGE_OV518:
	case BRIDGE_OV518PLUS:
		FUNC7(gspca_dev);
		break;
	case BRIDGE_OV519:
		FUNC8(sd);
		break;
	case BRIDGE_OVFX2:
		FUNC18(sd);
		break;
	case BRIDGE_W9968CF:
		FUNC21(sd);
		break;
	}

	/* The OV519 must be more aggressive about sensor detection since
	 * I2C write will never fail if the sensor is not present. We have
	 * to try to initialize the sensor to detect its presence */
	sd->sensor = -1;

	/* Test for 76xx */
	if (FUNC4(sd, OV7xx0_SID) >= 0) {
		FUNC15(sd);

	/* Test for 6xx0 */
	} else if (FUNC4(sd, OV6xx0_SID) >= 0) {
		FUNC14(sd);

	/* Test for 8xx0 */
	} else if (FUNC4(sd, OV8xx0_SID) >= 0) {
		FUNC16(sd);

	/* Test for 3xxx / 2xxx */
	} else if (FUNC4(sd, OV_HIRES_SID) >= 0) {
		FUNC17(sd);
	} else {
		FUNC1(gspca_dev, "Can't determine sensor slave IDs\n");
		goto error;
	}

	if (sd->sensor < 0)
		goto error;

	FUNC11(sd, 0);	/* turn LED off */

	switch (sd->bridge) {
	case BRIDGE_OV511:
	case BRIDGE_OV511PLUS:
		if (sd->sif) {
			cam->cam_mode = ov511_sif_mode;
			cam->nmodes = FUNC0(ov511_sif_mode);
		}
		break;
	case BRIDGE_OV518:
	case BRIDGE_OV518PLUS:
		if (sd->sif) {
			cam->cam_mode = ov518_sif_mode;
			cam->nmodes = FUNC0(ov518_sif_mode);
		}
		break;
	case BRIDGE_OV519:
		if (sd->sif) {
			cam->cam_mode = ov519_sif_mode;
			cam->nmodes = FUNC0(ov519_sif_mode);
		}
		break;
	case BRIDGE_OVFX2:
		switch (sd->sensor) {
		case SEN_OV2610:
		case SEN_OV2610AE:
			cam->cam_mode = ovfx2_ov2610_mode;
			cam->nmodes = FUNC0(ovfx2_ov2610_mode);
			break;
		case SEN_OV3610:
			cam->cam_mode = ovfx2_ov3610_mode;
			cam->nmodes = FUNC0(ovfx2_ov3610_mode);
			break;
		case SEN_OV9600:
			cam->cam_mode = ovfx2_ov9600_mode;
			cam->nmodes = FUNC0(ovfx2_ov9600_mode);
			break;
		default:
			if (sd->sif) {
				cam->cam_mode = ov519_sif_mode;
				cam->nmodes = FUNC0(ov519_sif_mode);
			}
			break;
		}
		break;
	case BRIDGE_W9968CF:
		if (sd->sif)
			cam->nmodes = FUNC0(w9968cf_vga_mode) - 1;

		/* w9968cf needs initialisation once the sensor is known */
		FUNC22(sd);
		break;
	}

	/* initialize the sensor */
	switch (sd->sensor) {
	case SEN_OV2610:
		FUNC23(sd, norm_2610, FUNC0(norm_2610));

		/* Enable autogain, autoexpo, awb, bandfilter */
		FUNC3(sd, 0x13, 0x27, 0x27);
		break;
	case SEN_OV2610AE:
		FUNC23(sd, norm_2610ae, FUNC0(norm_2610ae));

		/* enable autoexpo */
		FUNC3(sd, 0x13, 0x05, 0x05);
		break;
	case SEN_OV3610:
		FUNC23(sd, norm_3620b, FUNC0(norm_3620b));

		/* Enable autogain, autoexpo, awb, bandfilter */
		FUNC3(sd, 0x13, 0x27, 0x27);
		break;
	case SEN_OV6620:
		FUNC23(sd, norm_6x20, FUNC0(norm_6x20));
		break;
	case SEN_OV6630:
	case SEN_OV66308AF:
		FUNC23(sd, norm_6x30, FUNC0(norm_6x30));
		break;
	default:
/*	case SEN_OV7610: */
/*	case SEN_OV76BE: */
		FUNC23(sd, norm_7610, FUNC0(norm_7610));
		FUNC3(sd, 0x0e, 0x00, 0x40);
		break;
	case SEN_OV7620:
	case SEN_OV7620AE:
		FUNC23(sd, norm_7620, FUNC0(norm_7620));
		break;
	case SEN_OV7640:
	case SEN_OV7648:
		FUNC23(sd, norm_7640, FUNC0(norm_7640));
		break;
	case SEN_OV7660:
		FUNC2(sd, OV7670_R12_COM7, OV7670_COM7_RESET);
		FUNC5(14);
		FUNC19(sd, OV519_R57_SNAPSHOT, 0x23);
		FUNC24(sd, init_519_ov7660,
				FUNC0(init_519_ov7660));
		FUNC23(sd, norm_7660, FUNC0(norm_7660));
		sd->gspca_dev.curr_mode = 1;	/* 640x480 */
		FUNC10(sd);
		FUNC9(sd);
		FUNC20(gspca_dev);
		FUNC12(sd);
		FUNC13(sd);			/* not in win traces */
		FUNC11(sd, 0);
		break;
	case SEN_OV7670:
		FUNC23(sd, norm_7670, FUNC0(norm_7670));
		break;
	case SEN_OV8610:
		FUNC23(sd, norm_8610, FUNC0(norm_8610));
		break;
	case SEN_OV9600:
		FUNC23(sd, norm_9600, FUNC0(norm_9600));

		/* enable autoexpo */
/*		i2c_w_mask(sd, 0x13, 0x05, 0x05); */
		break;
	}
	return gspca_dev->usb_err;
error:
	FUNC1(gspca_dev, "OV519 Config failed\n");
	return -EINVAL;
}
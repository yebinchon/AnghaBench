#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sd {int sensor; int do_ctrl; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; int usb_err; TYPE_2__ cam; } ;
struct TYPE_3__ {int priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Creative_live_motion ; 
#define  SENSOR_ICX098BQ 130 
#define  SENSOR_LZ24BP 129 
#define  SENSOR_MI0360 128 
 int SENSOR_MT9V111 ; 
 int /*<<< orphan*/  SQ930_CTRL_CAP_STOP ; 
 int SQ930_GPIO_DFL_LED ; 
 int SQ930_GPIO_EXTRA2 ; 
 int SQ930_GPIO_RSTBAR ; 
 int /*<<< orphan*/  FUNC1 (struct sd*) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sd*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  icx098bq_start_0 ; 
 int /*<<< orphan*/  icx098bq_start_1 ; 
 int /*<<< orphan*/  icx098bq_start_2 ; 
 int /*<<< orphan*/  FUNC5 (struct sd*,int) ; 
 int /*<<< orphan*/  lz24bp_start_0 ; 
 int /*<<< orphan*/  lz24bp_start_1_clm ; 
 int /*<<< orphan*/  lz24bp_start_1_gen ; 
 int /*<<< orphan*/  lz24bp_start_2 ; 
 int /*<<< orphan*/  mi0360_init_23 ; 
 int /*<<< orphan*/  mi0360_init_24 ; 
 int /*<<< orphan*/  mi0360_init_25 ; 
 int /*<<< orphan*/  mi0360_start_0 ; 
 int /*<<< orphan*/  mi0360_start_1 ; 
 int /*<<< orphan*/  mi0360_start_2 ; 
 int /*<<< orphan*/  mi0360_start_3 ; 
 int /*<<< orphan*/  mi0360_start_4 ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  mt9v111_init_0 ; 
 int /*<<< orphan*/  mt9v111_init_1 ; 
 int /*<<< orphan*/  mt9v111_init_2 ; 
 int /*<<< orphan*/  mt9v111_init_3 ; 
 int /*<<< orphan*/  mt9v111_init_4 ; 
 int /*<<< orphan*/  mt9v111_start_1 ; 
 int /*<<< orphan*/  FUNC7 (struct gspca_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int mode;

	FUNC1(sd);
	FUNC2(sd, 0);
	FUNC6(100);

	switch (sd->sensor) {
	case SENSOR_ICX098BQ:
		FUNC10(gspca_dev, icx098bq_start_0,
				FUNC0(icx098bq_start_0),
				8);
		FUNC10(gspca_dev, icx098bq_start_1,
				FUNC0(icx098bq_start_1),
				5);
		FUNC10(gspca_dev, icx098bq_start_2,
				FUNC0(icx098bq_start_2),
				6);
		FUNC6(50);

		/* 1st start */
		FUNC8(gspca_dev);
		FUNC3(sd, SQ930_GPIO_EXTRA2 | SQ930_GPIO_RSTBAR, 0x00ff);
		FUNC6(70);
		FUNC7(gspca_dev, SQ930_CTRL_CAP_STOP, 0x0000);
		FUNC3(sd, 0x7f, 0x00ff);

		/* 2nd start */
		FUNC8(gspca_dev);
		FUNC3(sd, SQ930_GPIO_EXTRA2 | SQ930_GPIO_RSTBAR, 0x00ff);
		goto out;
	case SENSOR_LZ24BP:
		FUNC10(gspca_dev, lz24bp_start_0,
				FUNC0(lz24bp_start_0),
				8);
		if (sd->type != Creative_live_motion)
			FUNC10(gspca_dev, lz24bp_start_1_gen,
					FUNC0(lz24bp_start_1_gen),
					5);
		else
			FUNC10(gspca_dev, lz24bp_start_1_clm,
					FUNC0(lz24bp_start_1_clm),
					5);
		FUNC10(gspca_dev, lz24bp_start_2,
				FUNC0(lz24bp_start_2),
				6);
		mode = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv;
		FUNC5(sd, mode == 1 ? 0x0564 : 0x0310);
		FUNC6(10);
		break;
	case SENSOR_MI0360:
		FUNC10(gspca_dev, mi0360_start_0,
				FUNC0(mi0360_start_0),
				8);
		FUNC4(sd, mi0360_init_23,
				FUNC0(mi0360_init_23));
		FUNC4(sd, mi0360_init_24,
				FUNC0(mi0360_init_24));
		FUNC4(sd, mi0360_init_25,
				FUNC0(mi0360_init_25));
		FUNC10(gspca_dev, mi0360_start_1,
				FUNC0(mi0360_start_1),
				5);
		FUNC4(sd, mi0360_start_2,
				FUNC0(mi0360_start_2));
		FUNC4(sd, mi0360_start_3,
				FUNC0(mi0360_start_3));

		/* 1st start */
		FUNC8(gspca_dev);
		FUNC6(60);
		FUNC9(gspca_dev);

		FUNC4(sd,
			mi0360_start_4, FUNC0(mi0360_start_4));
		break;
	default:
/*	case SENSOR_MT9V111: */
		FUNC10(gspca_dev, mi0360_start_0,
				FUNC0(mi0360_start_0),
				8);
		FUNC4(sd, mt9v111_init_0,
				FUNC0(mt9v111_init_0));
		FUNC4(sd, mt9v111_init_1,
				FUNC0(mt9v111_init_1));
		FUNC4(sd, mt9v111_init_2,
				FUNC0(mt9v111_init_2));
		FUNC10(gspca_dev, mt9v111_start_1,
				FUNC0(mt9v111_start_1),
				5);
		FUNC4(sd, mt9v111_init_3,
				FUNC0(mt9v111_init_3));
		FUNC4(sd, mt9v111_init_4,
				FUNC0(mt9v111_init_4));
		break;
	}

	FUNC8(gspca_dev);
out:
	FUNC6(1000);

	if (sd->sensor == SENSOR_MT9V111)
		FUNC3(sd, SQ930_GPIO_DFL_LED, SQ930_GPIO_DFL_LED);

	sd->do_ctrl = 1;	/* set the exposure */

	return gspca_dev->usb_err;
}
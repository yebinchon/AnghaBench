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
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; } ;
typedef  size_t s32 ;
struct TYPE_3__ {size_t priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  IMAGE_1280 131 
#define  IMAGE_1600 130 
#define  IMAGE_640 129 
#define  IMAGE_800 128 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dat_1280 ; 
 int /*<<< orphan*/ * dat_1600 ; 
 int /*<<< orphan*/ * dat_640 ; 
 int /*<<< orphan*/ * dat_800 ; 
 int /*<<< orphan*/ * dat_post ; 
 size_t FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*) ; 
 int /*<<< orphan*/  tbl_640 ; 
 int /*<<< orphan*/  tbl_800 ; 
 int /*<<< orphan*/  tbl_big1 ; 
 int /*<<< orphan*/  tbl_big2 ; 
 int /*<<< orphan*/  tbl_big3 ; 
 int /*<<< orphan*/  tbl_sensor_settings_common1 ; 
 int /*<<< orphan*/  tbl_sensor_settings_common2 ; 

__attribute__((used)) static int FUNC6(struct gspca_dev *gspca_dev)
{
	s32 reso = gspca_dev->cam.cam_mode[(s32) gspca_dev->curr_mode].priv;
	s32 n; /* reserved for FETCH functions */

	FUNC2(gspca_dev, 0x40, 5, 0x0001, 0x0000, 0, NULL);

	n = FUNC3(gspca_dev, tbl_sensor_settings_common1,
			FUNC0(tbl_sensor_settings_common1));
	FUNC2(gspca_dev, 0x40, 3, 0x0000, 0x0200, 12, dat_post);
	FUNC1(gspca_dev);
	FUNC4(gspca_dev, tbl_sensor_settings_common1,
				FUNC0(tbl_sensor_settings_common1), n);

	switch (reso) {
	case IMAGE_640:
		n = FUNC3(gspca_dev, tbl_640, FUNC0(tbl_640));
		FUNC2(gspca_dev, 0x40, 3, 0x0000, 0x0200, 12, dat_640);
		break;

	case IMAGE_800:
		n = FUNC3(gspca_dev, tbl_800, FUNC0(tbl_800));
		FUNC2(gspca_dev, 0x40, 3, 0x0000, 0x0200, 12, dat_800);
		break;

	case IMAGE_1600:
	case IMAGE_1280:
		n = FUNC3(gspca_dev, tbl_big1, FUNC0(tbl_big1));

		if (reso == IMAGE_1280) {
			n = FUNC3(gspca_dev, tbl_big2,
					FUNC0(tbl_big2));
		} else {
			FUNC2(gspca_dev, 0x40, 1, 0x601d, 0x0086, 0, NULL);
			FUNC2(gspca_dev, 0x40, 1, 0x6001, 0x00d7, 0, NULL);
			FUNC2(gspca_dev, 0x40, 1, 0x6082, 0x00d3, 0, NULL);
		}

		n = FUNC3(gspca_dev, tbl_big3, FUNC0(tbl_big3));

		if (reso == IMAGE_1280) {
			FUNC2(gspca_dev, 0x40, 1, 0x6001, 0x00ff, 0, NULL);
			FUNC2(gspca_dev, 0x40, 3, 0x0000, 0x0200,
					12, dat_1280);
		} else {
			FUNC2(gspca_dev, 0x40, 1, 0x6020, 0x008c, 0, NULL);
			FUNC2(gspca_dev, 0x40, 1, 0x6001, 0x00ff, 0, NULL);
			FUNC2(gspca_dev, 0x40, 1, 0x6076, 0x0018, 0, NULL);
			FUNC2(gspca_dev, 0x40, 3, 0x0000, 0x0200,
					12, dat_1600);
		}
		break;
	}

	n = FUNC3(gspca_dev, tbl_sensor_settings_common2,
			FUNC0(tbl_sensor_settings_common2));

	FUNC5(gspca_dev);

	return 0;
}
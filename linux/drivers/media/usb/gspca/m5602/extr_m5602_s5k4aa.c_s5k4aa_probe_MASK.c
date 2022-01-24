#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_4__ {int** cam_mode; int nmodes; } ;
struct TYPE_5__ {TYPE_1__ cam; } ;
struct sd {TYPE_2__ gspca_dev; } ;
struct gspca_dev {int dummy; } ;
typedef  int /*<<< orphan*/  prod_id ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int**) ; 
#define  BRIDGE 130 
 int /*<<< orphan*/  D_PROBE ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ S5K4AA_SENSOR ; 
#define  SENSOR 129 
#define  SENSOR_LONG 128 
 scalar_t__ force_sensor ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct sd*,int,int*,int) ; 
 int FUNC3 (struct sd*,int,int) ; 
 int FUNC4 (struct sd*,int,int*,int) ; 
 scalar_t__ FUNC5 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int** preinit_s5k4aa ; 
 TYPE_3__ s5k4aa ; 
 int** s5k4aa_modes ; 

int FUNC7(struct sd *sd)
{
	u8 prod_id[6] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
	const u8 expected_prod_id[6] = {0x00, 0x10, 0x00, 0x4b, 0x33, 0x75};
	struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
	int i, err = 0;

	if (force_sensor) {
		if (force_sensor == S5K4AA_SENSOR) {
			FUNC6("Forcing a %s sensor\n", s5k4aa.name);
			goto sensor_found;
		}
		/* If we want to force another sensor, don't try to probe this
		 * one */
		return -ENODEV;
	}

	FUNC1(gspca_dev, D_PROBE, "Probing for a s5k4aa sensor\n");

	/* Preinit the sensor */
	for (i = 0; i < FUNC0(preinit_s5k4aa) && !err; i++) {
		u8 data[2] = {0x00, 0x00};

		switch (preinit_s5k4aa[i][0]) {
		case BRIDGE:
			err = FUNC3(sd,
						 preinit_s5k4aa[i][1],
						 preinit_s5k4aa[i][2]);
			break;

		case SENSOR:
			data[0] = preinit_s5k4aa[i][2];
			err = FUNC4(sd,
						  preinit_s5k4aa[i][1],
						  data, 1);
			break;

		case SENSOR_LONG:
			data[0] = preinit_s5k4aa[i][2];
			data[1] = preinit_s5k4aa[i][3];
			err = FUNC4(sd,
						  preinit_s5k4aa[i][1],
						  data, 2);
			break;
		default:
			FUNC6("Invalid stream command, exiting init\n");
			return -EINVAL;
		}
	}

	/* Test some registers, but we don't know their exact meaning yet */
	if (FUNC2(sd, 0x00, prod_id, 2))
		return -ENODEV;
	if (FUNC2(sd, 0x02, prod_id+2, 2))
		return -ENODEV;
	if (FUNC2(sd, 0x04, prod_id+4, 2))
		return -ENODEV;

	if (FUNC5(prod_id, expected_prod_id, sizeof(prod_id)))
		return -ENODEV;
	else
		FUNC6("Detected a s5k4aa sensor\n");

sensor_found:
	sd->gspca_dev.cam.cam_mode = s5k4aa_modes;
	sd->gspca_dev.cam.nmodes = FUNC0(s5k4aa_modes);

	return 0;
}
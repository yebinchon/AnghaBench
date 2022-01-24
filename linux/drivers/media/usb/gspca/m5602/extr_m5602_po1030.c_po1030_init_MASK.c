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
struct sd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int**) ; 
#define  BRIDGE 129 
 int EINVAL ; 
#define  SENSOR 128 
 scalar_t__ dump_sensor ; 
 int** init_po1030 ; 
 int FUNC1 (struct sd*,int,int) ; 
 int FUNC2 (struct sd*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sd*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct sd *sd)
{
	int i, err = 0;

	/* Init the sensor */
	for (i = 0; i < FUNC0(init_po1030) && !err; i++) {
		u8 data[2] = {0x00, 0x00};

		switch (init_po1030[i][0]) {
		case BRIDGE:
			err = FUNC1(sd,
				init_po1030[i][1],
				init_po1030[i][2]);
			break;

		case SENSOR:
			data[0] = init_po1030[i][2];
			err = FUNC2(sd,
				init_po1030[i][1], data, 1);
			break;

		default:
			FUNC4("Invalid stream command, exiting init\n");
			return -EINVAL;
		}
	}
	if (err < 0)
		return err;

	if (dump_sensor)
		FUNC3(sd);

	return 0;
}
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
typedef  scalar_t__ u8 ;
struct sd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__**) ; 
 scalar_t__ BRIDGE ; 
 scalar_t__ dump_sensor ; 
 scalar_t__** init_mt9m111 ; 
 int FUNC1 (struct sd*,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct sd*,scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sd*) ; 

int FUNC4(struct sd *sd)
{
	int i, err = 0;

	/* Init the sensor */
	for (i = 0; i < FUNC0(init_mt9m111) && !err; i++) {
		u8 data[2];

		if (init_mt9m111[i][0] == BRIDGE) {
			err = FUNC1(sd,
				init_mt9m111[i][1],
				init_mt9m111[i][2]);
		} else {
			data[0] = init_mt9m111[i][2];
			data[1] = init_mt9m111[i][3];
			err = FUNC2(sd,
				init_mt9m111[i][1], data, 2);
		}
	}

	if (dump_sensor)
		FUNC3(sd);

	return 0;
}
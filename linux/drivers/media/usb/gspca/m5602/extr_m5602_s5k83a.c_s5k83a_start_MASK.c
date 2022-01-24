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
struct sd {int /*<<< orphan*/ * rotation_thread; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ SENSOR ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct sd*,char*) ; 
 int FUNC4 (struct sd*,scalar_t__,scalar_t__) ; 
 int FUNC5 (struct sd*,scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  rotation_thread_function ; 
 int FUNC6 (struct sd*,int) ; 
 scalar_t__** start_s5k83a ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct sd *sd)
{
	int i, err = 0;

	/* Create another thread, polling the GPIO ports of the camera to check
	   if it got rotated. This is how the windows driver does it so we have
	   to assume that there is no better way of accomplishing this */
	sd->rotation_thread = FUNC3(rotation_thread_function,
					     sd, "rotation thread");
	if (FUNC1(sd->rotation_thread)) {
		err = FUNC2(sd->rotation_thread);
		sd->rotation_thread = NULL;
		return err;
	}
	FUNC7(sd->rotation_thread);

	/* Preinit the sensor */
	for (i = 0; i < FUNC0(start_s5k83a) && !err; i++) {
		u8 data[2] = {start_s5k83a[i][2], start_s5k83a[i][3]};
		if (start_s5k83a[i][0] == SENSOR)
			err = FUNC5(sd, start_s5k83a[i][1],
				data, 2);
		else
			err = FUNC4(sd, start_s5k83a[i][1],
				data[0]);
	}
	if (err < 0)
		return err;

	return FUNC6(sd, 1);
}
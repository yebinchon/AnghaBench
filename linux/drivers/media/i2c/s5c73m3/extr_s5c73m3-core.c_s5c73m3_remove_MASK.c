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
struct v4l2_subdev {int /*<<< orphan*/  entity; int /*<<< orphan*/  ctrl_handler; } ;
struct s5c73m3 {struct v4l2_subdev sensor_sd; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct v4l2_subdev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct s5c73m3* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct s5c73m3*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct v4l2_subdev *oif_sd = FUNC0(client);
	struct s5c73m3 *state = FUNC2(oif_sd);
	struct v4l2_subdev *sensor_sd = &state->sensor_sd;

	FUNC4(oif_sd);

	FUNC5(oif_sd->ctrl_handler);
	FUNC1(&oif_sd->entity);

	FUNC6(sensor_sd);
	FUNC1(&sensor_sd->entity);

	FUNC3(state);

	return 0;
}
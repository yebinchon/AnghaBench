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
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cs53l32a_state {int /*<<< orphan*/  hdl; } ;

/* Variables and functions */
 struct v4l2_subdev* FUNC0 (struct i2c_client*) ; 
 struct cs53l32a_state* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC0(client);
	struct cs53l32a_state *state = FUNC1(sd);

	FUNC3(sd);
	FUNC2(&state->hdl);
	return 0;
}
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
struct cx25840_state {int /*<<< orphan*/  hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*) ; 
 struct v4l2_subdev* FUNC1 (struct i2c_client*) ; 
 struct cx25840_state* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC1(client);
	struct cx25840_state *state = FUNC2(sd);

	FUNC0(sd);
	FUNC4(sd);
	FUNC3(&state->hdl);
	return 0;
}
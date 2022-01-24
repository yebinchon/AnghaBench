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
struct v4l2_subdev {int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  entity; } ;
struct i2c_client {int dummy; } ;
struct adv76xx_state {int /*<<< orphan*/  delayed_work_enable_hotplug; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adv76xx_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct adv76xx_state* FUNC5 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC2(client);
	struct adv76xx_state *state = FUNC5(sd);

	/* disable interrupts */
	FUNC3(sd, 0x40, 0);
	FUNC3(sd, 0x41, 0);
	FUNC3(sd, 0x46, 0);
	FUNC3(sd, 0x6e, 0);
	FUNC3(sd, 0x73, 0);

	FUNC1(&state->delayed_work_enable_hotplug);
	FUNC6(sd);
	FUNC4(&sd->entity);
	FUNC0(FUNC5(sd));
	FUNC7(sd->ctrl_handler);
	return 0;
}
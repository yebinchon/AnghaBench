#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;
struct tc358743_state {int /*<<< orphan*/  hdl; int /*<<< orphan*/  confctl_mutex; int /*<<< orphan*/  cec_adap; int /*<<< orphan*/  delayed_work_enable_hotplug; int /*<<< orphan*/  work_i2c_poll; int /*<<< orphan*/  timer; TYPE_1__* i2c_client; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct tc358743_state* FUNC7 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC4(client);
	struct tc358743_state *state = FUNC7(sd);

	if (!state->i2c_client->irq) {
		FUNC2(&state->timer);
		FUNC3(&state->work_i2c_poll);
	}
	FUNC0(&state->delayed_work_enable_hotplug);
	FUNC1(state->cec_adap);
	FUNC8(sd);
	FUNC10(sd);
	FUNC6(&state->confctl_mutex);
	FUNC5(&sd->entity);
	FUNC9(&state->hdl);

	return 0;
}
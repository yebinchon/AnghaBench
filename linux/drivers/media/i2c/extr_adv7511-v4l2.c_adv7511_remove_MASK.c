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
struct v4l2_subdev {int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  entity; } ;
struct i2c_client {int addr; TYPE_1__* adapter; int /*<<< orphan*/  name; } ;
struct adv7511_state {int chip_revision; int /*<<< orphan*/  work_queue; int /*<<< orphan*/  i2c_pktmem; int /*<<< orphan*/  i2c_cec; int /*<<< orphan*/  i2c_edid; int /*<<< orphan*/  edid_handler; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct adv7511_state* FUNC4 (struct v4l2_subdev*) ; 
 struct v4l2_subdev* FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC5(client);
	struct adv7511_state *state = FUNC4(sd);

	state->chip_revision = -1;

	FUNC9(1, debug, sd, "%s removed @ 0x%x (%s)\n", client->name,
		 client->addr << 1, client->adapter->name);

	FUNC1(sd, false);
	FUNC0(sd);
	FUNC2(&state->edid_handler);
	FUNC6(state->i2c_edid);
	FUNC6(state->i2c_cec);
	FUNC6(state->i2c_pktmem);
	FUNC3(state->work_queue);
	FUNC10(sd);
	FUNC7(&sd->entity);
	FUNC8(sd->ctrl_handler);
	return 0;
}
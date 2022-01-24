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
struct v4l2_subdev {int dummy; } ;
struct upd64031a_state {int gr_mode; int direct_3dycs_connect; int /*<<< orphan*/ * regs; scalar_t__ ext_vert_sync; scalar_t__ ext_comp_sync; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int /*<<< orphan*/  dev; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int TOT_REGS ; 
 int UPD64031A_3DYCS_COMPOSITE ; 
 int UPD64031A_GR_ON ; 
 struct upd64031a_state* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  upd64031a_init ; 
 int /*<<< orphan*/  upd64031a_ops ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct upd64031a_state *state;
	struct v4l2_subdev *sd;
	int i;

	if (!FUNC1(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	FUNC5(client, "chip found @ 0x%x (%s)\n",
			client->addr << 1, client->adapter->name);

	state = FUNC0(&client->dev, sizeof(*state), GFP_KERNEL);
	if (state == NULL)
		return -ENOMEM;
	sd = &state->sd;
	FUNC4(sd, client, &upd64031a_ops);
	FUNC2(state->regs, upd64031a_init, sizeof(state->regs));
	state->gr_mode = UPD64031A_GR_ON << 6;
	state->direct_3dycs_connect = UPD64031A_3DYCS_COMPOSITE << 4;
	state->ext_comp_sync = state->ext_vert_sync = 0;
	for (i = 0; i < TOT_REGS; i++)
		FUNC3(sd, i, state->regs[i]);
	return 0;
}
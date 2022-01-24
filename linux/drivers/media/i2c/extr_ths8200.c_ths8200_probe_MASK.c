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
struct ths8200_state {struct v4l2_subdev sd; int /*<<< orphan*/  chip_version; } ;
struct i2c_client {int addr; TYPE_1__* adapter; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  THS8200_VERSION ; 
 int /*<<< orphan*/  debug ; 
 struct ths8200_state* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  ths8200_ops ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	struct ths8200_state *state;
	struct v4l2_subdev *sd;
	int error;

	/* Check if the adapter supports the needed features */
	if (!FUNC1(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	state = FUNC0(&client->dev, sizeof(*state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;

	sd = &state->sd;
	FUNC6(sd, client, &ths8200_ops);

	state->chip_version = FUNC3(sd, THS8200_VERSION);
	FUNC5(1, debug, sd, "chip version 0x%x\n", state->chip_version);

	FUNC2(sd);

	error = FUNC4(&state->sd);
	if (error)
		return error;

	FUNC7(sd, "%s found @ 0x%x (%s)\n", client->name,
		  client->addr << 1, client->adapter->name);

	return 0;
}
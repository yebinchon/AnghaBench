#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct ths7303_state {struct v4l2_subdev sd; struct ths7303_platform_data* pdata; } ;
struct ths7303_platform_data {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_5__ {struct ths7303_platform_data* platform_data; } ;
struct i2c_client {int addr; TYPE_2__ dev; TYPE_1__* adapter; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  THS7303_FILTER_MODE_480I_576I ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 struct ths7303_state* FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ths7303_ops ; 
 scalar_t__ FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct ths7303_platform_data *pdata = client->dev.platform_data;
	struct ths7303_state *state;
	struct v4l2_subdev *sd;

	if (pdata == NULL) {
		FUNC0(&client->dev, "No platform data\n");
		return -EINVAL;
	}

	if (!FUNC2(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	FUNC6(client, "chip found @ 0x%x (%s)\n",
			client->addr << 1, client->adapter->name);

	state = FUNC1(&client->dev, sizeof(struct ths7303_state),
			     GFP_KERNEL);
	if (!state)
		return -ENOMEM;

	state->pdata = pdata;
	sd = &state->sd;
	FUNC4(sd, client, &ths7303_ops);

	/* set to default 480I_576I filter mode */
	if (FUNC3(sd, THS7303_FILTER_MODE_480I_576I) < 0) {
		FUNC5(client, "Setting to 480I_576I filter mode failed!\n");
		return -EINVAL;
	}

	return 0;
}
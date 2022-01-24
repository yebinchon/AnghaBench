#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int /*<<< orphan*/  dev; TYPE_6__* adapter; } ;
struct TYPE_9__ {int error; } ;
struct TYPE_8__ {TYPE_2__* ctrl_handler; } ;
struct adv7393_state {int reg01; int reg02; TYPE_2__ hdl; TYPE_1__ sd; int /*<<< orphan*/  std; int /*<<< orphan*/  output; int /*<<< orphan*/  reg82; int /*<<< orphan*/  reg80; int /*<<< orphan*/  reg35; int /*<<< orphan*/  reg00; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7393_BRIGHTNESS_DEF ; 
 int /*<<< orphan*/  ADV7393_BRIGHTNESS_MAX ; 
 int /*<<< orphan*/  ADV7393_BRIGHTNESS_MIN ; 
 int /*<<< orphan*/  ADV7393_COMPOSITE_ID ; 
 int /*<<< orphan*/  ADV7393_GAIN_DEF ; 
 int /*<<< orphan*/  ADV7393_GAIN_MAX ; 
 int /*<<< orphan*/  ADV7393_GAIN_MIN ; 
 int /*<<< orphan*/  ADV7393_HD_MODE_REG6_DEFAULT ; 
 int /*<<< orphan*/  ADV7393_HUE_DEF ; 
 int /*<<< orphan*/  ADV7393_HUE_MAX ; 
 int /*<<< orphan*/  ADV7393_HUE_MIN ; 
 int /*<<< orphan*/  ADV7393_POWER_MODE_REG_DEFAULT ; 
 int /*<<< orphan*/  ADV7393_SD_MODE_REG1_DEFAULT ; 
 int /*<<< orphan*/  ADV7393_SD_MODE_REG2_DEFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_HUE ; 
 int /*<<< orphan*/  V4L2_STD_NTSC ; 
 int /*<<< orphan*/  adv7393_ctrl_ops ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  adv7393_ops ; 
 struct adv7393_state* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	struct adv7393_state *state;
	int err;

	if (!FUNC2(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	FUNC8(client, "chip found @ 0x%x (%s)\n",
			client->addr << 1, client->adapter->name);

	state = FUNC1(&client->dev, sizeof(*state), GFP_KERNEL);
	if (state == NULL)
		return -ENOMEM;

	state->reg00	= ADV7393_POWER_MODE_REG_DEFAULT;
	state->reg01	= 0x00;
	state->reg02	= 0x20;
	state->reg35	= ADV7393_HD_MODE_REG6_DEFAULT;
	state->reg80	= ADV7393_SD_MODE_REG1_DEFAULT;
	state->reg82	= ADV7393_SD_MODE_REG2_DEFAULT;

	state->output = ADV7393_COMPOSITE_ID;
	state->std = V4L2_STD_NTSC;

	FUNC7(&state->sd, client, &adv7393_ops);

	FUNC4(&state->hdl, 3);
	FUNC6(&state->hdl, &adv7393_ctrl_ops,
			V4L2_CID_BRIGHTNESS, ADV7393_BRIGHTNESS_MIN,
					     ADV7393_BRIGHTNESS_MAX, 1,
					     ADV7393_BRIGHTNESS_DEF);
	FUNC6(&state->hdl, &adv7393_ctrl_ops,
			V4L2_CID_HUE, ADV7393_HUE_MIN,
				      ADV7393_HUE_MAX, 1,
				      ADV7393_HUE_DEF);
	FUNC6(&state->hdl, &adv7393_ctrl_ops,
			V4L2_CID_GAIN, ADV7393_GAIN_MIN,
				       ADV7393_GAIN_MAX, 1,
				       ADV7393_GAIN_DEF);
	state->sd.ctrl_handler = &state->hdl;
	if (state->hdl.error) {
		int err = state->hdl.error;

		FUNC3(&state->hdl);
		return err;
	}
	FUNC5(&state->hdl);

	err = FUNC0(&state->sd);
	if (err)
		FUNC3(&state->hdl);
	return err;
}
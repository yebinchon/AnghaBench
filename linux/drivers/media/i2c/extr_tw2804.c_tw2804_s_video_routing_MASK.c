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
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct tw2804 {int channel; int input; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  channel_registers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  global_registers ; 
 int FUNC2 (struct i2c_client*,int,int) ; 
 struct tw2804* FUNC3 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC4 (struct v4l2_subdev*) ; 
 int FUNC5 (struct i2c_client*,int,int,int) ; 
 scalar_t__ FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd, u32 input, u32 output,
	u32 config)
{
	struct tw2804 *dec = FUNC3(sd);
	struct i2c_client *client = FUNC4(sd);
	int reg;

	if (config && config - 1 != dec->channel) {
		if (config > 4) {
			FUNC1(&client->dev,
				"channel %d is not between 1 and 4!\n", config);
			return -EINVAL;
		}
		dec->channel = config - 1;
		FUNC0(&client->dev, "initializing TW2804 channel %d\n",
			dec->channel);
		if (dec->channel == 0 &&
				FUNC6(client, global_registers, 0) < 0) {
			FUNC1(&client->dev,
				"error initializing TW2804 global registers\n");
			return -EIO;
		}
		if (FUNC6(client, channel_registers, dec->channel) < 0) {
			FUNC1(&client->dev,
				"error initializing TW2804 channel %d\n",
				dec->channel);
			return -EIO;
		}
	}

	if (input > 1)
		return -EINVAL;

	if (input == dec->input)
		return 0;

	reg = FUNC2(client, 0x22, dec->channel);

	if (reg >= 0) {
		if (input == 0)
			reg &= ~(1 << 2);
		else
			reg |= 1 << 2;
		reg = FUNC5(client, 0x22, reg, dec->channel);
	}

	if (reg >= 0)
		dec->input = input;
	else
		return reg;
	return 0;
}
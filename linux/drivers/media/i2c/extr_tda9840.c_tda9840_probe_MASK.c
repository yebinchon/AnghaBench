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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int /*<<< orphan*/  dev; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_READ_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ; 
 int /*<<< orphan*/  LEVEL_ADJUST ; 
 int /*<<< orphan*/  STEREO_ADJUST ; 
 int /*<<< orphan*/  SWITCH ; 
 int /*<<< orphan*/  TDA9840_SET_STEREO ; 
 struct v4l2_subdev* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  tda9840_ops ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct v4l2_subdev *sd;

	/* let's see whether this adapter can support what we need */
	if (!FUNC1(client->adapter,
			I2C_FUNC_SMBUS_READ_BYTE_DATA |
			I2C_FUNC_SMBUS_WRITE_BYTE_DATA))
		return -EIO;

	FUNC4(client, "chip found @ 0x%x (%s)\n",
			client->addr << 1, client->adapter->name);

	sd = FUNC0(&client->dev, sizeof(*sd), GFP_KERNEL);
	if (sd == NULL)
		return -ENOMEM;
	FUNC3(sd, client, &tda9840_ops);

	/* set initial values for level & stereo - adjustment, mode */
	FUNC2(sd, LEVEL_ADJUST, 0);
	FUNC2(sd, STEREO_ADJUST, 0);
	FUNC2(sd, SWITCH, TDA9840_SET_STEREO);
	return 0;
}
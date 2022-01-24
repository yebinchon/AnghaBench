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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; struct i2c_adapter* adapter; int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; } ;
struct i2c_adapter {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLIENT_SCCB ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 struct v4l2_subdev* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  initial_registers ; 
 int /*<<< orphan*/  ov7640_ops ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct v4l2_subdev *sd;

	if (!FUNC1(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	sd = FUNC0(&client->dev, sizeof(*sd), GFP_KERNEL);
	if (sd == NULL)
		return -ENOMEM;
	FUNC2(sd, client, &ov7640_ops);

	client->flags = I2C_CLIENT_SCCB;

	FUNC4(client, "chip found @ 0x%02x (%s)\n",
			client->addr << 1, client->adapter->name);

	if (FUNC5(client, initial_registers) < 0) {
		FUNC3(client, "error initializing OV7640\n");
		return -ENODEV;
	}

	return 0;
}
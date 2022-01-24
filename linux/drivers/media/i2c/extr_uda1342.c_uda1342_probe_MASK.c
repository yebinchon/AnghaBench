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
struct i2c_client {int addr; struct i2c_adapter* adapter; int /*<<< orphan*/  dev; } ;
struct i2c_adapter {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 struct v4l2_subdev* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uda1342_ops ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int,int) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct v4l2_subdev *sd;

	if (!FUNC2(adapter, I2C_FUNC_SMBUS_WORD_DATA))
		return -ENODEV;

	FUNC0(&client->dev, "initializing UDA1342 at address %d on %s\n",
		client->addr, adapter->name);

	sd = FUNC1(&client->dev, sizeof(*sd), GFP_KERNEL);
	if (sd == NULL)
		return -ENOMEM;

	FUNC3(sd, client, &uda1342_ops);

	FUNC5(client, 0x00, 0x8000); /* reset registers */
	FUNC5(client, 0x00, 0x1241); /* select input 1 */

	FUNC4(client, "chip found @ 0x%02x (%s)\n",
			client->addr << 1, client->adapter->name);

	return 0;
}
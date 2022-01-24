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
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WRITE_BYTE ; 
 int /*<<< orphan*/  debug ; 
 struct v4l2_subdev* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tea6420_ops ; 
 scalar_t__ FUNC2 (struct v4l2_subdev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct i2c_client*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct v4l2_subdev *sd;
	int err, i;

	/* let's see whether this adapter can support what we need */
	if (!FUNC1(client->adapter, I2C_FUNC_SMBUS_WRITE_BYTE))
		return -EIO;

	FUNC5(client, "chip found @ 0x%x (%s)\n",
			client->addr << 1, client->adapter->name);

	sd = FUNC0(&client->dev, sizeof(*sd), GFP_KERNEL);
	if (sd == NULL)
		return -ENOMEM;
	FUNC3(sd, client, &tea6420_ops);

	/* set initial values: set "mute"-input to all outputs at gain 0 */
	err = 0;
	for (i = 1; i < 5; i++)
		err += FUNC2(sd, 6, i, 0);
	if (err) {
		FUNC4(1, debug, client, "could not initialize tea6420\n");
		return -ENODEV;
	}
	return 0;
}
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
struct isl29003_data {int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_VERSION ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,struct isl29003_data*) ; 
 int /*<<< orphan*/  isl29003_attr_group ; 
 int FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct isl29003_data*) ; 
 struct isl29003_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
				    const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct isl29003_data *data;
	int err = 0;

	if (!FUNC1(adapter, I2C_FUNC_SMBUS_BYTE))
		return -EIO;

	data = FUNC5(sizeof(struct isl29003_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC2(client, data);
	FUNC6(&data->lock);

	/* initialize the ISL29003 chip */
	err = FUNC3(client);
	if (err)
		goto exit_kfree;

	/* register sysfs hooks */
	err = FUNC7(&client->dev.kobj, &isl29003_attr_group);
	if (err)
		goto exit_kfree;

	FUNC0(&client->dev, "driver version %s enabled\n", DRIVER_VERSION);
	return 0;

exit_kfree:
	FUNC4(data);
	return err;
}
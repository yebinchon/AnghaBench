#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tsl2550_data {int operating_mode; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {int* platform_data; int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 char* DRIVER_VERSION ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_READ_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct tsl2550_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct tsl2550_data*) ; 
 struct tsl2550_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tsl2550_attr_group ; 
 int FUNC8 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
				   const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct tsl2550_data *data;
	int *opmode, err = 0;

	if (!FUNC2(adapter, I2C_FUNC_SMBUS_WRITE_BYTE
					    | I2C_FUNC_SMBUS_READ_BYTE_DATA)) {
		err = -EIO;
		goto exit;
	}

	data = FUNC5(sizeof(struct tsl2550_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}
	data->client = client;
	FUNC3(client, data);

	/* Check platform data */
	opmode = client->dev.platform_data;
	if (opmode) {
		if (*opmode < 0 || *opmode > 1) {
			FUNC0(&client->dev, "invalid operating_mode (%d)\n",
					*opmode);
			err = -EINVAL;
			goto exit_kfree;
		}
		data->operating_mode = *opmode;
	} else
		data->operating_mode = 0;	/* default mode is standard */
	FUNC1(&client->dev, "%s operating mode\n",
			data->operating_mode ? "extended" : "standard");

	FUNC6(&data->update_lock);

	/* Initialize the TSL2550 chip */
	err = FUNC8(client);
	if (err)
		goto exit_kfree;

	/* Register sysfs hooks */
	err = FUNC7(&client->dev.kobj, &tsl2550_attr_group);
	if (err)
		goto exit_kfree;

	FUNC1(&client->dev, "support ver. %s enabled\n", DRIVER_VERSION);

	return 0;

exit_kfree:
	FUNC4(data);
exit:
	return err;
}
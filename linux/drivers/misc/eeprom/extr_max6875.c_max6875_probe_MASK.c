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
struct max6875_data {int /*<<< orphan*/  fake_client; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {int addr; TYPE_1__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_READ_BYTE ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct max6875_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct max6875_data*) ; 
 struct max6875_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  user_eeprom_attr ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct max6875_data *data;
	int err;

	if (!FUNC2(adapter, I2C_FUNC_SMBUS_WRITE_BYTE_DATA
				     | I2C_FUNC_SMBUS_READ_BYTE))
		return -ENODEV;

	/* Only bind to even addresses */
	if (client->addr & 1)
		return -ENODEV;

	data = FUNC7(sizeof(struct max6875_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	/* A fake client is created on the odd address */
	data->fake_client = FUNC3(client->adapter, client->addr + 1);
	if (FUNC0(data->fake_client)) {
		err = FUNC1(data->fake_client);
		goto exit_kfree;
	}

	/* Init real i2c_client */
	FUNC4(client, data);
	FUNC8(&data->update_lock);

	err = FUNC9(&client->dev.kobj, &user_eeprom_attr);
	if (err)
		goto exit_remove_fake;

	return 0;

exit_remove_fake:
	FUNC5(data->fake_client);
exit_kfree:
	FUNC6(data);
	return err;
}
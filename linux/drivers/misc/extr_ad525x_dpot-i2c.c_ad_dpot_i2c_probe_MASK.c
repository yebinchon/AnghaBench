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
struct i2c_device_id {int /*<<< orphan*/  name; int /*<<< orphan*/  driver_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct ad_dpot_bus_data {int /*<<< orphan*/ * bops; struct i2c_client* client; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ad_dpot_bus_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
				      const struct i2c_device_id *id)
{
	struct ad_dpot_bus_data bdata = {
		.client = client,
		.bops = &bops,
	};

	if (!FUNC2(client->adapter,
				     I2C_FUNC_SMBUS_WORD_DATA)) {
		FUNC1(&client->dev, "SMBUS Word Data not Supported\n");
		return -EIO;
	}

	return FUNC0(&client->dev, &bdata, id->driver_data, id->name);
}
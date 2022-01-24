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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct i2c_client {int addr; int /*<<< orphan*/  name; } ;
struct i2c_board_info {struct htcpld_chip* platform_data; int /*<<< orphan*/  type; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int dummy; } ;
struct htcpld_data {struct htcpld_chip* chip; } ;
struct htcpld_core_platform_data {int /*<<< orphan*/  i2c_adapter_id; struct htcpld_chip_platform_data* chip; } ;
struct htcpld_chip_platform_data {int /*<<< orphan*/  addr; } ;
struct htcpld_chip {int /*<<< orphan*/  cache_out; int /*<<< orphan*/  cache_in; struct i2c_client* client; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 struct htcpld_core_platform_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 struct i2c_adapter* FUNC4 (int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC5 (struct i2c_adapter*,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct htcpld_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 
 struct htcpld_data* FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(
		struct platform_device *pdev,
		int chip_index)
{
	struct htcpld_data *htcpld;
	struct device *dev = &pdev->dev;
	struct htcpld_core_platform_data *pdata;
	struct htcpld_chip *chip;
	struct htcpld_chip_platform_data *plat_chip_data;
	struct i2c_adapter *adapter;
	struct i2c_client *client;
	struct i2c_board_info info;

	/* Get the platform and driver data */
	pdata = FUNC0(dev);
	htcpld = FUNC9(pdev);
	chip = &htcpld->chip[chip_index];
	plat_chip_data = &pdata->chip[chip_index];

	adapter = FUNC4(pdata->i2c_adapter_id);
	if (!adapter) {
		/* Eek, no such I2C adapter!  Bail out. */
		FUNC1(dev, "Chip at i2c address 0x%x: Invalid i2c adapter %d\n",
			 plat_chip_data->addr, pdata->i2c_adapter_id);
		return -ENODEV;
	}

	if (!FUNC3(adapter, I2C_FUNC_SMBUS_READ_BYTE_DATA)) {
		FUNC1(dev, "i2c adapter %d non-functional\n",
			 pdata->i2c_adapter_id);
		return -EINVAL;
	}

	FUNC8(&info, 0, sizeof(struct i2c_board_info));
	info.addr = plat_chip_data->addr;
	FUNC11(info.type, "htcpld-chip", I2C_NAME_SIZE);
	info.platform_data = chip;

	/* Add the I2C device.  This calls the probe() function. */
	client = FUNC5(adapter, &info);
	if (!client) {
		/* I2C device registration failed, contineu with the next */
		FUNC1(dev, "Unable to add I2C device for 0x%x\n",
			 plat_chip_data->addr);
		return -ENODEV;
	}

	FUNC6(client, chip);
	FUNC10(client->name, I2C_NAME_SIZE, "Chip_0x%x", client->addr);
	chip->client = client;

	/* Reset the chip */
	FUNC2(client);
	chip->cache_in = FUNC7(client, chip->cache_out);

	return 0;
}
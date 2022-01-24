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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BMC_CMD_REV_MAIN ; 
 int /*<<< orphan*/  BMC_CMD_REV_MAJOR ; 
 int /*<<< orphan*/  BMC_CMD_REV_MINOR ; 
 int ENODEV ; 
 int I2C_FUNC_SMBUS_BYTE ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  menf21bmc_cell ; 
 int FUNC6 (struct i2c_client*) ; 

__attribute__((used)) static int
FUNC7(struct i2c_client *client, const struct i2c_device_id *ids)
{
	int rev_major, rev_minor, rev_main;
	int ret;

	ret = FUNC4(client->adapter,
				      I2C_FUNC_SMBUS_BYTE_DATA |
				      I2C_FUNC_SMBUS_WORD_DATA |
				      I2C_FUNC_SMBUS_BYTE);
	if (!ret)
		return -ENODEV;

	rev_major = FUNC5(client, BMC_CMD_REV_MAJOR);
	if (rev_major < 0) {
		FUNC1(&client->dev, "failed to get BMC major revision\n");
		return rev_major;
	}

	rev_minor = FUNC5(client, BMC_CMD_REV_MINOR);
	if (rev_minor < 0) {
		FUNC1(&client->dev, "failed to get BMC minor revision\n");
		return rev_minor;
	}

	rev_main = FUNC5(client, BMC_CMD_REV_MAIN);
	if (rev_main < 0) {
		FUNC1(&client->dev, "failed to get BMC main revision\n");
		return rev_main;
	}

	FUNC2(&client->dev, "FW Revision: %02d.%02d.%02d\n",
		 rev_major, rev_minor, rev_main);

	/*
	 * We have to exit the Production Mode of the BMC to activate the
	 * Watchdog functionality and the BIOS life sign monitoring.
	 */
	ret = FUNC6(client);
	if (ret < 0) {
		FUNC1(&client->dev, "failed to leave production mode\n");
		return ret;
	}

	ret = FUNC3(&client->dev, 0, menf21bmc_cell,
				   FUNC0(menf21bmc_cell), NULL, 0, NULL);
	if (ret < 0) {
		FUNC1(&client->dev, "failed to add BMC sub-devices\n");
		return ret;
	}

	return 0;
}
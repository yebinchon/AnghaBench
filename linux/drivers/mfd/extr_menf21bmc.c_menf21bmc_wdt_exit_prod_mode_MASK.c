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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMC_CMD_WDT_EXIT_PROD ; 
 int /*<<< orphan*/  BMC_CMD_WDT_PROD_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	int val, ret;

	val = FUNC1(client, BMC_CMD_WDT_PROD_STAT);
	if (val < 0)
		return val;

	/*
	 * Production mode should be not active after delivery of the Board.
	 * To be sure we check it, inform the user and exit the mode
	 * if active.
	 */
	if (val == 0x00) {
		FUNC0(&client->dev,
			"BMC in production mode. Exit production mode\n");

		ret = FUNC2(client, BMC_CMD_WDT_EXIT_PROD);
		if (ret < 0)
			return ret;
	}

	return 0;
}
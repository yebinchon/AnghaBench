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
typedef  int /*<<< orphan*/  status_result ;
typedef  int /*<<< orphan*/  status_addr ;

/* Variables and functions */
 char DW9807_STATUS_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,char*,int) ; 
 int FUNC2 (struct i2c_client*,char const*,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	const char status_addr = DW9807_STATUS_ADDR;
	char status_result;
	int ret;

	ret = FUNC2(client, &status_addr, sizeof(status_addr));
	if (ret < 0) {
		FUNC0(&client->dev, "I2C write STATUS address fail ret = %d\n",
			ret);
		return ret;
	}

	ret = FUNC1(client, &status_result, sizeof(status_result));
	if (ret < 0) {
		FUNC0(&client->dev, "I2C read STATUS value fail ret = %d\n",
			ret);
		return ret;
	}

	return status_result;
}
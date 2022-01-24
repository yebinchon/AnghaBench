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
struct noon010_info {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_ID_REG ; 
 int ENODEV ; 
 int NOON010PC30_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct noon010_info*) ; 
 int FUNC3 (struct noon010_info*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, struct noon010_info *info)
{
	int ret;

	ret = FUNC3(info);
	if (ret)
		return ret;

	ret = FUNC1(client, DEVICE_ID_REG);
	if (ret < 0)
		FUNC0(&client->dev, "I2C read failed: 0x%X\n", ret);

	FUNC2(info);

	return ret == NOON010PC30_ID ? 0 : -ENODEV;
}
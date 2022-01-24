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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i2c_client*,int,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	int ret_val;
	/* Write the command and then switch on */
	ret_val = FUNC2(client, 0x80, 0x01);
	if (ret_val < 0) {
		FUNC1(&client->dev, "failed default switch on write\n");
		return ret_val;
	}
	/* detection range: 1~64K Lux, maunal measurement */
	ret_val = FUNC2(client, 0x81, 0x08);
	if (ret_val < 0)
		FUNC1(&client->dev, "failed default LUX on write\n");

	/*  We always get 0 for the 1st measurement after system power on,
	 *  so make sure it is finished before user asks for data.
	 */
	FUNC0(&client->dev);

	return ret_val;
}
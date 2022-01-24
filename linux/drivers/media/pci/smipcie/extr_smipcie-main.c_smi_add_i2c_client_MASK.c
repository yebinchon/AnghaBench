#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 struct i2c_client* FUNC0 (struct i2c_adapter*,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct i2c_client *FUNC4(struct i2c_adapter *adapter,
			struct i2c_board_info *info)
{
	struct i2c_client *client;

	FUNC2(info->type);
	client = FUNC0(adapter, info);
	if (client == NULL || client->dev.driver == NULL)
		goto err_add_i2c_client;

	if (!FUNC3(client->dev.driver->owner)) {
		FUNC1(client);
		goto err_add_i2c_client;
	}
	return client;

err_add_i2c_client:
	client = NULL;
	return client;
}
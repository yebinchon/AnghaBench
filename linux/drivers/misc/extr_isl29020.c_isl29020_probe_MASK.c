#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m_als_gr ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int  FUNC6(struct i2c_client *client,
					const struct i2c_device_id *id)
{
	int res;

	res = FUNC0(client);
	if (res <  0)
		return res;

	res = FUNC5(&client->dev.kobj, &m_als_gr);
	if (res) {
		FUNC2(&client->dev, "isl29020: device create file failed\n");
		return res;
	}
	FUNC3(&client->dev, "%s isl29020: ALS chip found\n", client->name);
	FUNC1(client, 0);
	FUNC4(&client->dev);
	return res;
}
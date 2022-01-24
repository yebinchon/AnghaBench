#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {int /*<<< orphan*/  name; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m_compass_gr ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
					const struct i2c_device_id *id)
{
	int res;

	res = FUNC2(&client->dev.kobj, &m_compass_gr);
	if (res) {
		FUNC0(&client->dev, "device_create_file failed\n");
		return res;
	}
	FUNC1(&client->dev, "%s HMC6352 compass chip found\n",
							client->name);
	return 0;
}
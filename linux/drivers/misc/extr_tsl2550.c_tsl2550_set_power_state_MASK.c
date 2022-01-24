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
struct tsl2550_data {int power_state; int /*<<< orphan*/  operating_mode; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSL2550_POWER_DOWN ; 
 int /*<<< orphan*/  TSL2550_POWER_UP ; 
 struct tsl2550_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, int state)
{
	struct tsl2550_data *data = FUNC0(client);
	int ret;

	if (state == 0)
		ret = FUNC1(client, TSL2550_POWER_DOWN);
	else {
		ret = FUNC1(client, TSL2550_POWER_UP);

		/* On power up we should reset operating mode also... */
		FUNC2(client, data->operating_mode);
	}

	data->power_state = state;

	return ret;
}
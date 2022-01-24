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
struct tsl2550_data {int power_state; size_t operating_mode; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/ * TSL2550_MODE_RANGE ; 
 int TSL2550_POWER_UP ; 
 struct tsl2550_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct tsl2550_data *data = FUNC0(client);
	int err;

	/*
	 * Probe the chip. To do so we try to power up the device and then to
	 * read back the 0x03 code
	 */
	err = FUNC1(client, TSL2550_POWER_UP);
	if (err < 0)
		return err;
	if (err != TSL2550_POWER_UP)
		return -ENODEV;
	data->power_state = 1;

	/* Set the default operating mode */
	err = FUNC2(client,
				   TSL2550_MODE_RANGE[data->operating_mode]);
	if (err < 0)
		return err;

	return 0;
}
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
struct isl29003_data {int /*<<< orphan*/  lock; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISL29003_REG_LSB_SENSOR ; 
 int /*<<< orphan*/  ISL29003_REG_MSB_SENSOR ; 
 int* gain_range ; 
 struct isl29003_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct isl29003_data *data = FUNC0(client);
	int lsb, msb, range, bitdepth;

	FUNC4(&data->lock);
	lsb = FUNC1(client, ISL29003_REG_LSB_SENSOR);

	if (lsb < 0) {
		FUNC5(&data->lock);
		return lsb;
	}

	msb = FUNC1(client, ISL29003_REG_MSB_SENSOR);
	FUNC5(&data->lock);

	if (msb < 0)
		return msb;

	range = FUNC2(client);
	bitdepth = (4 - FUNC3(client)) * 4;
	return (((msb << 8) | lsb) * gain_range[range]) >> bitdepth;
}
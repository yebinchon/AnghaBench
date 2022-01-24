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
typedef  int u8 ;
typedef  size_t u32 ;
struct isl29003_data {int* reg_cache; int /*<<< orphan*/  lock; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t ISL29003_NUM_CACHABLE_REGS ; 
 struct isl29003_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
				u32 reg, u8 mask, u8 shift, u8 val)
{
	struct isl29003_data *data = FUNC0(client);
	int ret = 0;
	u8 tmp;

	if (reg >= ISL29003_NUM_CACHABLE_REGS)
		return -EINVAL;

	FUNC2(&data->lock);

	tmp = data->reg_cache[reg];
	tmp &= ~mask;
	tmp |= val << shift;

	ret = FUNC1(client, reg, tmp);
	if (!ret)
		data->reg_cache[reg] = tmp;

	FUNC3(&data->lock);
	return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct smiapp_sensor {TYPE_1__* src; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SMIAPP_REG_16BIT ; 
 scalar_t__ SMIAPP_REG_32BIT ; 
 scalar_t__ SMIAPP_REG_8BIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SMIAPP_REG_FLAG_FLOAT ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct smiapp_sensor*,int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int FUNC3 (struct smiapp_sensor*,int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int FUNC4 (struct i2c_client*,int) ; 
 struct i2c_client* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct smiapp_sensor *sensor, u32 reg, u32 *val,
			 bool only8)
{
	struct i2c_client *client = FUNC5(&sensor->src->sd);
	u8 len = FUNC1(reg);
	int rval;

	if (len != SMIAPP_REG_8BIT && len != SMIAPP_REG_16BIT
	    && len != SMIAPP_REG_32BIT)
		return -EINVAL;

	if (len == SMIAPP_REG_8BIT || !only8)
		rval = FUNC2(sensor, FUNC0(reg), len, val);
	else
		rval = FUNC3(sensor, FUNC0(reg), len,
					     val);
	if (rval < 0)
		return rval;

	if (reg & SMIAPP_REG_FLAG_FLOAT)
		*val = FUNC4(client, *val);

	return 0;
}
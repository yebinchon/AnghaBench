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
struct i2c_client {int addr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int REG_ADDR_MASK ; 
 unsigned int REG_ADDR_SHIFT ; 
 unsigned int REG_OFFSET_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(void *context, unsigned int reg,
				 unsigned int val)
{
	struct i2c_client *client = context;
	int ret, orig_addr = client->addr;

	if (!(reg & REG_ADDR_MASK)) {
		FUNC0(&client->dev, "Error I2C address not specified\n");
		return -EINVAL;
	}

	client->addr = (reg & REG_ADDR_MASK) >> REG_ADDR_SHIFT;
	ret = FUNC1(client, reg & REG_OFFSET_MASK, val);
	client->addr = orig_addr;

	return ret;
}
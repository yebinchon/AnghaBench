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
struct i2c_client {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_LOCK_SEGMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int,int,unsigned char*) ; 

int FUNC3(struct i2c_client *i2c, int reg,
			  int count, unsigned char *buf)
{
	unsigned char zero = 0;
	int ret;

	FUNC0(i2c->adapter, I2C_LOCK_SEGMENT);
	FUNC2(i2c, 0xfa, 0, &zero);
	FUNC2(i2c, 0xfb, 0, &zero);
	FUNC2(i2c, 0xff, 0, &zero);
	ret = FUNC2(i2c, reg, count, buf);
	FUNC2(i2c, 0xFE, 0, &zero);
	FUNC2(i2c, 0xFC, 0, &zero);
	FUNC1(i2c->adapter, I2C_LOCK_SEGMENT);
	return ret;
}
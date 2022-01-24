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
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC3 (struct i2c_client*,int,int,unsigned char*) ; 

int FUNC4(struct i2c_client *i2c, int reg,
			  unsigned char data)
{
	unsigned char zero;
	int ret;

	FUNC0(i2c->adapter, I2C_LOCK_SEGMENT);
	FUNC2(i2c, 0xFA, 0, &zero);
	FUNC2(i2c, 0xFB, 0, &zero);
	FUNC2(i2c, 0xFF, 0, &zero);
	ret = FUNC3(i2c, reg, 1, &data);
	FUNC2(i2c, 0xFE, 0, &zero);
	FUNC2(i2c, 0xFC, 0, &zero);
	FUNC1(i2c->adapter, I2C_LOCK_SEGMENT);
	return ret;
}
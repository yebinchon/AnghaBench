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
struct max8925_chip {int /*<<< orphan*/  io_lock; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct max8925_chip* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct i2c_client *i2c, int reg)
{
	struct max8925_chip *chip = FUNC0(i2c);
	unsigned char data = 0;
	int ret;

	FUNC2(&chip->io_lock);
	ret = FUNC1(i2c, reg, 1, &data);
	FUNC3(&chip->io_lock);

	if (ret < 0)
		return ret;
	else
		return (int)data;
}
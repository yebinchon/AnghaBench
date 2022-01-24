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
typedef  int /*<<< orphan*/  u8 ;
struct max8998_dev {int /*<<< orphan*/  iolock; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct max8998_dev* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct i2c_client *i2c, u8 reg, u8 value)
{
	struct max8998_dev *max8998 = FUNC0(i2c);
	int ret;

	FUNC2(&max8998->iolock);
	ret = FUNC1(i2c, reg, value);
	FUNC3(&max8998->iolock);
	return ret;
}
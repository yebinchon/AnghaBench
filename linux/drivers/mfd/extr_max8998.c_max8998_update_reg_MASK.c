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
struct max8998_dev {int /*<<< orphan*/  iolock; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct max8998_dev* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int FUNC2 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct i2c_client *i2c, u8 reg, u8 val, u8 mask)
{
	struct max8998_dev *max8998 = FUNC0(i2c);
	int ret;

	FUNC3(&max8998->iolock);
	ret = FUNC1(i2c, reg);
	if (ret >= 0) {
		u8 old_val = ret & 0xff;
		u8 new_val = (val & mask) | (old_val & (~mask));
		ret = FUNC2(i2c, reg, new_val);
	}
	FUNC4(&max8998->iolock);
	return ret;
}
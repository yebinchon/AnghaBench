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
typedef  int u32 ;
typedef  int u16 ;
struct pt1 {int dummy; } ;
struct i2c_msg {int flags; int len; int* buf; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int I2C_M_RD ; 
 struct pt1* FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt1*,int*) ; 
 int FUNC2 (struct pt1*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pt1*,int,int*,struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt1*,int,int*,struct i2c_msg*) ; 
 int FUNC5 (struct pt1*,int) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
	struct pt1 *pt1;
	int i;
	struct i2c_msg *msg, *next_msg;
	int addr, ret;
	u16 len;
	u32 word;

	pt1 = FUNC0(adap);

	for (i = 0; i < num; i++) {
		msg = &msgs[i];
		if (msg->flags & I2C_M_RD)
			return -ENOTSUPP;

		if (i + 1 < num)
			next_msg = &msgs[i + 1];
		else
			next_msg = NULL;

		if (next_msg && next_msg->flags & I2C_M_RD) {
			i++;

			len = next_msg->len;
			if (len > 4)
				return -ENOTSUPP;

			FUNC1(pt1, &addr);
			FUNC4(pt1, addr, &addr, msg);
			FUNC3(pt1, addr, &addr, next_msg);
			ret = FUNC2(pt1, addr);
			if (ret < 0)
				return ret;

			word = FUNC5(pt1, 2);
			while (len--) {
				next_msg->buf[len] = word;
				word >>= 8;
			}
		} else {
			FUNC1(pt1, &addr);
			FUNC4(pt1, addr, &addr, msg);
			ret = FUNC2(pt1, addr);
			if (ret < 0)
				return ret;
		}
	}

	return num;
}
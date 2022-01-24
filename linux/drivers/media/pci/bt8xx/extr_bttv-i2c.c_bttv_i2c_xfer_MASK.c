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
struct v4l2_device {int dummy; } ;
struct i2c_msg {int flags; } ;
struct i2c_adapter {int dummy; } ;
struct bttv {int dummy; } ;

/* Variables and functions */
 int BT848_INT_I2CDONE ; 
 int BT848_INT_RACK ; 
 int /*<<< orphan*/  BT848_INT_STAT ; 
 int I2C_M_RD ; 
 int FUNC0 (struct bttv*,struct i2c_msg*,int) ; 
 int FUNC1 (struct bttv*,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ i2c_debug ; 
 struct v4l2_device* FUNC3 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct bttv* FUNC5 (struct v4l2_device*) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *i2c_adap, struct i2c_msg *msgs, int num)
{
	struct v4l2_device *v4l2_dev = FUNC3(i2c_adap);
	struct bttv *btv = FUNC5(v4l2_dev);
	int retval = 0;
	int i;

	if (i2c_debug)
		FUNC4("bt-i2c:");

	FUNC2(BT848_INT_I2CDONE|BT848_INT_RACK, BT848_INT_STAT);
	for (i = 0 ; i < num; i++) {
		if (msgs[i].flags & I2C_M_RD) {
			/* read */
			retval = FUNC0(btv, &msgs[i], i+1 == num);
			if (retval < 0)
				goto err;
		} else {
			/* write */
			retval = FUNC1(btv, &msgs[i], i+1 == num);
			if (retval < 0)
				goto err;
		}
	}
	return num;

 err:
	return retval;
}
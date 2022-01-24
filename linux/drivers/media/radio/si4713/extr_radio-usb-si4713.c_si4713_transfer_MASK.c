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
struct si4713_usb_device {int dummy; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int I2C_M_RD ; 
 struct si4713_usb_device* FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (struct si4713_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct si4713_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_adapter *i2c_adapter,
				struct i2c_msg *msgs, int num)
{
	struct si4713_usb_device *radio = FUNC0(i2c_adapter);
	int retval = -EINVAL;
	int i;

	for (i = 0; i < num; i++) {
		if (msgs[i].flags & I2C_M_RD)
			retval = FUNC1(radio, msgs[i].buf, msgs[i].len);
		else
			retval = FUNC2(radio, msgs[i].buf, msgs[i].len);
		if (retval)
			break;
	}

	return retval ? retval : num;
}
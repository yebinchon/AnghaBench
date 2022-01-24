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
union i2c_smbus_data {int /*<<< orphan*/  byte; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i2c_adapter {int dummy; } ;
struct cafe_camera {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int I2C_SMBUS_BYTE_DATA ; 
 char I2C_SMBUS_READ ; 
 char I2C_SMBUS_WRITE ; 
 int FUNC0 (struct cafe_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct cafe_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cafe_camera*,char*,int) ; 
 struct cafe_camera* FUNC3 (struct i2c_adapter*) ; 

__attribute__((used)) static int FUNC4(struct i2c_adapter *adapter, u16 addr,
		unsigned short flags, char rw, u8 command,
		int size, union i2c_smbus_data *data)
{
	struct cafe_camera *cam = FUNC3(adapter);
	int ret = -EINVAL;

	/*
	 * This interface would appear to only do byte data ops.  OK
	 * it can do word too, but the cam chip has no use for that.
	 */
	if (size != I2C_SMBUS_BYTE_DATA) {
		FUNC2(cam, "funky xfer size %d\n", size);
		return -EINVAL;
	}

	if (rw == I2C_SMBUS_WRITE)
		ret = FUNC1(cam, addr, command, data->byte);
	else if (rw == I2C_SMBUS_READ)
		ret = FUNC0(cam, addr, command, &data->byte);
	return ret;
}
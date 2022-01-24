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
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct als_data {int /*<<< orphan*/  mutex; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ERANGE ; 
 struct als_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int FUNC2 (struct i2c_client*,int,int) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 struct i2c_client* FUNC8 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
		struct device_attribute *attr, const  char *buf, size_t count)
{
	struct i2c_client *client = FUNC8(dev);
	struct als_data *data = FUNC0(client);
	int ret_val;
	unsigned long val;

	ret_val = FUNC3(buf, 10, &val);
	if (ret_val)
		return ret_val;

	if (val < 4096)
		val = 1;
	else if (val < 65536)
		val = 2;
	else
		return -ERANGE;

	FUNC6(dev);

	/* Make sure nobody else reads/modifies/writes 0x81 while we
	   are active */
	FUNC4(&data->mutex);

	ret_val = FUNC1(client, 0x81);
	if (ret_val < 0)
		goto fail;

	/* Reset the bits before setting them */
	ret_val = ret_val & 0xFA;

	if (val == 1) /* Setting detection range up to 4k LUX */
		ret_val = (ret_val | 0x01);
	else /* Setting detection range up to 64k LUX*/
		ret_val = (ret_val | 0x00);

	ret_val = FUNC2(client, 0x81, ret_val);

	if (ret_val >= 0) {
		/* All OK */
		FUNC5(&data->mutex);
		FUNC7(dev);
		return count;
	}
fail:
	FUNC5(&data->mutex);
	FUNC7(dev);
	return ret_val;
}
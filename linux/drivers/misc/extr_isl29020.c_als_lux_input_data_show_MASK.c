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
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (char*,char*,unsigned long) ; 
 struct i2c_client* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			struct device_attribute *attr, char *buf)
{
	struct i2c_client *client = FUNC7(dev);
	int ret_val, val;
	unsigned long int lux;
	int temp;

	FUNC4(dev);
	FUNC1(100);

	FUNC2(&mutex);
	temp = FUNC0(client, 0x02); /* MSB data */
	if (temp < 0) {
		FUNC5(dev);
		FUNC3(&mutex);
		return temp;
	}

	ret_val = FUNC0(client, 0x01); /* LSB data */
	FUNC3(&mutex);

	if (ret_val < 0) {
		FUNC5(dev);
		return ret_val;
	}

	ret_val |= temp << 8;
	val = FUNC0(client, 0x00);
	FUNC5(dev);
	if (val < 0)
		return val;
	lux = ((((1 << (2 * (val & 3))))*1000) * ret_val) / 65536;
	return FUNC6(buf, "%ld\n", lux);
}
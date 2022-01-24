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
 int FUNC0 (struct device*) ; 
 struct als_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int FUNC9 (char*,char*,int) ; 
 struct i2c_client* FUNC10 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
			struct device_attribute *attr, char *buf)
{
	struct i2c_client *client = FUNC10(dev);
	struct als_data *data = FUNC1(client);
	int ret_val;
	int temp;

	/* Protect against parallel reads */
	FUNC7(dev);
	FUNC5(&data->mutex);

	/* clear EOC interrupt status */
	FUNC3(client, 0x40);
	/* start measurement */
	temp = FUNC2(client, 0x81);
	FUNC4(client, 0x81, temp | 0x08);

	ret_val = FUNC0(dev);
	if (ret_val < 0)
		goto failed;

	temp = FUNC2(client, 0x8C); /* LSB data */
	if (temp < 0) {
		ret_val = temp;
		goto failed;
	}
	ret_val = FUNC2(client, 0x8D); /* MSB data */
	if (ret_val < 0)
		goto failed;

	FUNC6(&data->mutex);
	FUNC8(dev);

	temp = (ret_val << 8) | temp;
	return FUNC9(buf, "%d\n", temp);
failed:
	FUNC6(&data->mutex);
	FUNC8(dev);
	return ret_val;
}
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
 int FUNC0 (struct i2c_client*,char) ; 
 int /*<<< orphan*/  compass_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct i2c_client*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,char*,int,int) ; 
 struct i2c_client* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			struct device_attribute *attr, char *buf)
{
	struct i2c_client *client = FUNC7(dev);
	unsigned char i2c_data[2];
	int ret;

	FUNC4(&compass_mutex);
	ret = FUNC0(client, 'A');
	if (ret != 1) {
		FUNC5(&compass_mutex);
		return ret;
	}
	FUNC3(10); /* sending 'A' cmd we need to wait for 7-10 millisecs */
	ret = FUNC2(client, i2c_data, 2);
	FUNC5(&compass_mutex);
	if (ret < 0) {
		FUNC1(dev, "i2c read data cmd failed\n");
		return ret;
	}
	ret = (i2c_data[0] << 8) | i2c_data[1];
	return FUNC6(buf, "%d.%d\n", ret/10, ret%10);
}
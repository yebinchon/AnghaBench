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
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (struct i2c_client*,char const) ; 
 int /*<<< orphan*/  compass_mutex ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (char const*) ; 
 struct i2c_client* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, const char *buf, size_t count,
			const char *map)
{
	struct i2c_client *c = FUNC6(dev);
	int ret;
	unsigned long val;

	ret = FUNC2(buf, 10, &val);
	if (ret)
		return ret;
	if (val >= FUNC5(map))
		return -EINVAL;
	val = FUNC0(val, FUNC5(map));
	FUNC3(&compass_mutex);
	ret = FUNC1(c, map[val]);
	FUNC4(&compass_mutex);
	if (ret < 0)
		return ret;
	return count;
}
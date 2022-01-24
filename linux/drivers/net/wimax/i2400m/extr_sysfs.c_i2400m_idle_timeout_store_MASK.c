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
struct i2400m {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int) ; 
 size_t FUNC1 (struct i2400m*,unsigned int) ; 
 struct i2400m* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static
ssize_t FUNC5(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t size)
{
	ssize_t result;
	struct i2400m *i2400m = FUNC2(FUNC4(dev));
	unsigned val;

	result = -EINVAL;
	if (FUNC3(buf, "%u\n", &val) != 1)
		goto error_no_unsigned;
	if (val != 0 && (val < 100 || val > 300000 || val % 100 != 0)) {
		FUNC0(dev, "idle_timeout: %u: invalid msecs specification; "
			"valid values are 0, 100-300000 in 100 increments\n",
			val);
		goto error_bad_value;
	}
	result = FUNC1(i2400m, val);
	if (result >= 0)
		result = size;
error_no_unsigned:
error_bad_value:
	return result;
}
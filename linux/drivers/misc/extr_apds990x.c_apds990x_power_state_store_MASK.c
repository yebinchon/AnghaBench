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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct apds990x_chip {int lux_wait_fresh_res; int /*<<< orphan*/  mutex; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct apds990x_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct apds990x_chip*) ; 
 struct apds990x_chip* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t len)
{
	struct apds990x_chip *chip =  FUNC2(dev);
	unsigned long value;
	int ret;

	ret = FUNC3(buf, 0, &value);
	if (ret)
		return ret;

	if (value) {
		FUNC6(dev);
		FUNC4(&chip->mutex);
		chip->lux_wait_fresh_res = true;
		FUNC0(chip);
		FUNC1(chip);
		FUNC5(&chip->mutex);
	} else {
		if (!FUNC8(dev))
			FUNC7(dev);
	}
	return len;
}
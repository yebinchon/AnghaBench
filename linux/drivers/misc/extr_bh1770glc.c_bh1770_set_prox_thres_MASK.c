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
struct bh1770_chip {unsigned long prox_threshold; int /*<<< orphan*/  mutex; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned long BH1770_PROX_RANGE ; 
 int EINVAL ; 
 int FUNC0 (struct bh1770_chip*) ; 
 struct bh1770_chip* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf, size_t count)
{
	struct bh1770_chip *chip =  FUNC1(dev);
	unsigned long value;
	int ret;

	ret = FUNC2(buf, 0, &value);
	if (ret)
		return ret;

	if (value > BH1770_PROX_RANGE)
		return -EINVAL;

	FUNC3(&chip->mutex);
	chip->prox_threshold = value;
	ret = FUNC0(chip);
	FUNC4(&chip->mutex);
	if (ret < 0)
		return ret;
	return count;
}
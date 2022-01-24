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
struct bh1770_chip {int lux_rate_index; int /*<<< orphan*/  mutex; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (unsigned long*) ; 
 int FUNC1 (struct bh1770_chip*,int) ; 
 struct bh1770_chip* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 unsigned long* lux_rates_hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf, size_t count)
{
	struct bh1770_chip *chip =  FUNC2(dev);
	unsigned long rate_hz;
	int ret, i;

	ret = FUNC3(buf, 0, &rate_hz);
	if (ret)
		return ret;

	for (i = 0; i < FUNC0(lux_rates_hz) - 1; i++)
		if (rate_hz >= lux_rates_hz[i])
			break;

	FUNC4(&chip->mutex);
	chip->lux_rate_index = i;
	ret = FUNC1(chip, i);
	FUNC5(&chip->mutex);

	if (ret < 0)
		return ret;

	return count;
}
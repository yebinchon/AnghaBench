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
typedef  scalar_t__ u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bh1770_chip {scalar_t__ lux_calib; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lux_threshold_lo; int /*<<< orphan*/  lux_threshold_hi; scalar_t__ lux_corr; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct bh1770_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct bh1770_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bh1770_chip* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t len)
{
	struct bh1770_chip *chip = FUNC2(dev);
	unsigned long value;
	u32 old_calib;
	u32 new_corr;
	int ret;

	ret = FUNC3(buf, 0, &value);
	if (ret)
		return ret;

	FUNC4(&chip->mutex);
	old_calib = chip->lux_calib;
	chip->lux_calib = value;
	new_corr = FUNC0(chip);
	if (new_corr == 0) {
		chip->lux_calib = old_calib;
		FUNC5(&chip->mutex);
		return -EINVAL;
	}
	chip->lux_corr = new_corr;
	/* Refresh thresholds on HW after changing correction value */
	FUNC1(chip, chip->lux_threshold_hi,
				chip->lux_threshold_lo);

	FUNC5(&chip->mutex);

	return len;
}
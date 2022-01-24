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
struct bh1770_chip {int lux_wait_result; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lux_rate_index; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  BH1770_ENABLE ; 
 int /*<<< orphan*/  BH1770_LUX_DEF_THRES ; 
 size_t FUNC0 (struct bh1770_chip*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct bh1770_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bh1770_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bh1770_chip*) ; 
 struct bh1770_chip* FUNC4 (struct device*) ; 
 size_t FUNC5 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf, size_t count)
{
	struct bh1770_chip *chip =  FUNC4(dev);
	unsigned long value;
	ssize_t ret;

	ret = FUNC5(buf, 0, &value);
	if (ret)
		return ret;

	FUNC6(&chip->mutex);
	if (value) {
		FUNC8(dev);

		ret = FUNC1(chip, chip->lux_rate_index);
		if (ret < 0) {
			FUNC9(dev);
			goto leave;
		}

		ret = FUNC0(chip, BH1770_ENABLE);
		if (ret < 0) {
			FUNC9(dev);
			goto leave;
		}

		/* This causes interrupt after the next measurement cycle */
		FUNC2(chip, BH1770_LUX_DEF_THRES,
					BH1770_LUX_DEF_THRES);
		/* Inform that we are waiting for a result from ALS */
		chip->lux_wait_result = true;
		FUNC3(chip);
	} else if (!FUNC10(dev)) {
		FUNC9(dev);
	}
	ret = count;
leave:
	FUNC7(&chip->mutex);
	return ret;
}
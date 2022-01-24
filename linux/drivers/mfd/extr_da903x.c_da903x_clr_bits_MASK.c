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
typedef  int uint8_t ;
struct device {int dummy; } ;
struct da903x_chip {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 struct da903x_chip* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct device *dev, int reg, uint8_t bit_mask)
{
	struct da903x_chip *chip = FUNC2(dev);
	uint8_t reg_val;
	int ret = 0;

	FUNC3(&chip->lock);

	ret = FUNC0(chip->client, reg, &reg_val);
	if (ret)
		goto out;

	if (reg_val & bit_mask) {
		reg_val &= ~bit_mask;
		ret = FUNC1(chip->client, reg, reg_val);
	}
out:
	FUNC4(&chip->lock);
	return ret;
}
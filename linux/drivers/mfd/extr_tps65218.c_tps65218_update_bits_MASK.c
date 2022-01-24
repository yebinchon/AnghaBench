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
struct tps65218 {int /*<<< orphan*/  tps_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 
 int FUNC4 (struct tps65218*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct tps65218 *tps, unsigned int reg,
		unsigned int mask, unsigned int val, unsigned int level)
{
	int ret;
	unsigned int data;

	ret = FUNC3(tps->regmap, reg, &data);
	if (ret) {
		FUNC0(tps->dev, "Read from reg 0x%x failed\n", reg);
		return ret;
	}

	data &= ~mask;
	data |= val & mask;

	FUNC1(&tps->tps_lock);
	ret = FUNC4(tps, reg, data, level);
	if (ret)
		FUNC0(tps->dev, "Write for reg 0x%x failed\n", reg);
	FUNC2(&tps->tps_lock);

	return ret;
}
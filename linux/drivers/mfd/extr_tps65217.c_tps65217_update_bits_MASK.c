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
struct tps65217 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC1 (struct tps65217*,unsigned int,unsigned int*) ; 
 int FUNC2 (struct tps65217*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct tps65217 *tps, unsigned int reg,
		unsigned int mask, unsigned int val, unsigned int level)
{
	int ret;
	unsigned int data;

	ret = FUNC1(tps, reg, &data);
	if (ret) {
		FUNC0(tps->dev, "Read from reg 0x%x failed\n", reg);
		return ret;
	}

	data &= ~mask;
	data |= val & mask;

	ret = FUNC2(tps, reg, data, level);
	if (ret)
		FUNC0(tps->dev, "Write for reg 0x%x failed\n", reg);

	return ret;
}
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
struct arizona {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int USEC_PER_MSEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 

__attribute__((used)) static int FUNC5(struct arizona *arizona,
			    int timeout_ms, unsigned int reg,
			    unsigned int mask, unsigned int target)
{
	ktime_t timeout = FUNC2(FUNC3(), timeout_ms * USEC_PER_MSEC);
	unsigned int val = 0;
	int ret;

	do {
		ret = FUNC4(arizona->regmap, reg, &val);

		if ((val & mask) == target)
			return 0;
	} while (FUNC0(timeout));

	if (ret) {
		FUNC1(arizona->dev, "Failed polling reg 0x%x: %d\n",
			reg, ret);
		return ret;
	}

	FUNC1(arizona->dev, "Polling reg 0x%x timed out: %x\n", reg, val);
	return -ETIMEDOUT;
}
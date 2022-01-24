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
struct regmap {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPS68470_REG_RESET ; 
 int /*<<< orphan*/  TPS68470_REG_RESET_MASK ; 
 int /*<<< orphan*/  TPS68470_REG_REVID ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct regmap *regmap)
{
	unsigned int version;
	int ret;

	/* Force software reset */
	ret = FUNC3(regmap, TPS68470_REG_RESET, TPS68470_REG_RESET_MASK);
	if (ret)
		return ret;

	ret = FUNC2(regmap, TPS68470_REG_REVID, &version);
	if (ret) {
		FUNC0(dev, "Failed to read revision register: %d\n", ret);
		return ret;
	}

	FUNC1(dev, "TPS68470 REVID: 0x%x\n", version);

	return 0;
}
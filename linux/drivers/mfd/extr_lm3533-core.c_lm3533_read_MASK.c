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
typedef  int u8 ;
struct lm3533 {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int*) ; 

int FUNC3(struct lm3533 *lm3533, u8 reg, u8 *val)
{
	int tmp;
	int ret;

	ret = FUNC2(lm3533->regmap, reg, &tmp);
	if (ret < 0) {
		FUNC1(lm3533->dev, "failed to read register %02x: %d\n",
								reg, ret);
		return ret;
	}

	*val = tmp;

	FUNC0(lm3533->dev, "read [%02x]: %02x\n", reg, *val);

	return ret;
}
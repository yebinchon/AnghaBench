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
typedef  unsigned int uint8_t ;
struct tps6586x {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct tps6586x* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,unsigned int*) ; 

int FUNC2(struct device *dev, int reg, uint8_t *val)
{
	struct tps6586x *tps6586x = FUNC0(dev);
	unsigned int rval;
	int ret;

	ret = FUNC1(tps6586x->regmap, reg, &rval);
	if (!ret)
		*val = rval;
	return ret;
}
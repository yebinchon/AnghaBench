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

/* Variables and functions */
 int /*<<< orphan*/  REG13_AGC_EN ; 
 int /*<<< orphan*/  REG15_GAIN_MSB ; 
 int /*<<< orphan*/  REG_CTRL15 ; 
 int /*<<< orphan*/  REG_GAIN ; 
 int /*<<< orphan*/  REG_REG13 ; 
 int FUNC0 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct regmap *regmap, int value)
{
	int ret;

	ret = FUNC1(regmap, REG_GAIN, value & 0xff);
	if (ret)
		return ret;

	ret = FUNC0(regmap, REG_CTRL15,
				 REG15_GAIN_MSB, (value >> 8) & 0x3);
	if (!ret)
		ret = FUNC0(regmap, REG_REG13, REG13_AGC_EN, 0);

	return ret;
}
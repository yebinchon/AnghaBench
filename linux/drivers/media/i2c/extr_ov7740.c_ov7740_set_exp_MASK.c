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
 int REG13_AEC_EN ; 
 int REG13_AGC_EN ; 
 int /*<<< orphan*/  REG_AEC ; 
 int /*<<< orphan*/  REG_HAEC ; 
 int /*<<< orphan*/  REG_REG13 ; 
 int FUNC0 (struct regmap*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC2(struct regmap *regmap, int value)
{
	int ret;

	/* Turn off AEC/AGC */
	ret = FUNC0(regmap, REG_REG13,
				 REG13_AEC_EN | REG13_AGC_EN, 0);
	if (ret)
		return ret;

	ret = FUNC1(regmap, REG_AEC, (unsigned char)value);
	if (ret)
		return ret;

	return FUNC1(regmap, REG_HAEC, (unsigned char)(value >> 8));
}
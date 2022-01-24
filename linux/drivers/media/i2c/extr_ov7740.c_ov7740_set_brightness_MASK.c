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
 int /*<<< orphan*/  REG13_AEC_EN ; 
 int /*<<< orphan*/  REG13_AGC_EN ; 
 int /*<<< orphan*/  REG_REG13 ; 
 int /*<<< orphan*/  REG_SGNSET ; 
 int /*<<< orphan*/  REG_YBRIGHT ; 
 int /*<<< orphan*/  SGNSET_YBRIGHT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC2(struct regmap *regmap, int value)
{
	/* Turn off AEC/AGC */
	FUNC0(regmap, REG_REG13, REG13_AEC_EN, 0);
	FUNC0(regmap, REG_REG13, REG13_AGC_EN, 0);

	if (value >= 0) {
		FUNC1(regmap, REG_YBRIGHT, (unsigned char)value);
		FUNC0(regmap, REG_SGNSET, SGNSET_YBRIGHT_MASK, 0);
	} else{
		FUNC1(regmap, REG_YBRIGHT, (unsigned char)(-value));
		FUNC0(regmap, REG_SGNSET, SGNSET_YBRIGHT_MASK, 1);
	}

	return 0;
}
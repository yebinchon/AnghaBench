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
typedef  int u32 ;
struct lan9303 {int /*<<< orphan*/  indirect_mutex; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAN9303_PMI_ACCESS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  LAN9303_PMI_DATA ; 
 int FUNC2 (struct lan9303*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct lan9303 *chip, int addr, int regnum)
{
	int ret;
	u32 val;

	val = FUNC1(addr);
	val |= FUNC0(regnum);

	FUNC4(&chip->indirect_mutex);

	ret = FUNC2(chip);
	if (ret)
		goto on_error;

	/* start the MII read cycle */
	ret = FUNC6(chip->regmap, LAN9303_PMI_ACCESS, val);
	if (ret)
		goto on_error;

	ret = FUNC2(chip);
	if (ret)
		goto on_error;

	/* read the result of this operation */
	ret = FUNC3(chip->regmap, LAN9303_PMI_DATA, &val);
	if (ret)
		goto on_error;

	FUNC5(&chip->indirect_mutex);

	return val & 0xffff;

on_error:
	FUNC5(&chip->indirect_mutex);
	return ret;
}
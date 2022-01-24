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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct lan9303 {int /*<<< orphan*/  indirect_mutex; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAN9303_PMI_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LAN9303_PMI_ACCESS_MII_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LAN9303_PMI_DATA ; 
 int FUNC2 (struct lan9303*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct lan9303 *chip, int addr,
				      int regnum, u16 val)
{
	int ret;
	u32 reg;

	reg = FUNC1(addr);
	reg |= FUNC0(regnum);
	reg |= LAN9303_PMI_ACCESS_MII_WRITE;

	FUNC3(&chip->indirect_mutex);

	ret = FUNC2(chip);
	if (ret)
		goto on_error;

	/* write the data first... */
	ret = FUNC5(chip->regmap, LAN9303_PMI_DATA, val);
	if (ret)
		goto on_error;

	/* ...then start the MII write cycle */
	ret = FUNC5(chip->regmap, LAN9303_PMI_ACCESS, reg);

on_error:
	FUNC4(&chip->indirect_mutex);
	return ret;
}
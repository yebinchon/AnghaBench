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
typedef  int /*<<< orphan*/  u16 ;
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MV88E6XXX_G1_CTL1 ; 
 int /*<<< orphan*/  MV88E6XXX_G1_CTL1_PPU_ENABLE ; 
 int /*<<< orphan*/  MV88E6XXX_G1_CTL1_SW_RESET ; 
 int FUNC0 (struct mv88e6xxx_chip*) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mv88e6xxx_chip*) ; 
 int FUNC3 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct mv88e6xxx_chip *chip)
{
	u16 val;
	int err;

	/* Set the SWReset bit 15 along with the PPUEn bit 14, to also restart
	 * the PPU, including re-doing PHY detection and initialization
	 */
	err = FUNC1(chip, MV88E6XXX_G1_CTL1, &val);
	if (err)
		return err;

	val |= MV88E6XXX_G1_CTL1_SW_RESET;
	val |= MV88E6XXX_G1_CTL1_PPU_ENABLE;

	err = FUNC3(chip, MV88E6XXX_G1_CTL1, val);
	if (err)
		return err;

	err = FUNC2(chip);
	if (err)
		return err;

	return FUNC0(chip);
}
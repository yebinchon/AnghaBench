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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_MMD_PHYXS ; 
 int /*<<< orphan*/  MV88E6390_SGMII_CONTROL ; 
 int MV88E6390_SGMII_CONTROL_LOOPBACK ; 
 int MV88E6390_SGMII_CONTROL_PDOWN ; 
 int MV88E6390_SGMII_CONTROL_RESET ; 
 int FUNC0 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct mv88e6xxx_chip *chip, u8 lane,
					bool up)
{
	u16 val, new_val;
	int err;

	err = FUNC0(chip, lane, MDIO_MMD_PHYXS,
				    MV88E6390_SGMII_CONTROL, &val);
	if (err)
		return err;

	if (up)
		new_val = val & ~(MV88E6390_SGMII_CONTROL_RESET |
				  MV88E6390_SGMII_CONTROL_LOOPBACK |
				  MV88E6390_SGMII_CONTROL_PDOWN);
	else
		new_val = val | MV88E6390_SGMII_CONTROL_PDOWN;

	if (val != new_val)
		err = FUNC1(chip, lane, MDIO_MMD_PHYXS,
					     MV88E6390_SGMII_CONTROL, new_val);

	return err;
}
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
 int /*<<< orphan*/  MV88E6XXX_G2_SMI_PHY_CMD_OP_22_WRITE_DATA ; 
 int /*<<< orphan*/  MV88E6XXX_G2_SMI_PHY_DATA ; 
 int FUNC0 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct mv88e6xxx_chip*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mv88e6xxx_chip *chip,
					       bool external, int dev, int reg,
					       u16 data)
{
	u16 op = MV88E6XXX_G2_SMI_PHY_CMD_OP_22_WRITE_DATA;
	int err;

	err = FUNC1(chip);
	if (err)
		return err;

	err = FUNC2(chip, MV88E6XXX_G2_SMI_PHY_DATA, data);
	if (err)
		return err;

	return FUNC0(chip, external, op, dev, reg);
}
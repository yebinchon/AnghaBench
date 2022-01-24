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
typedef  int u16 ;
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int MV88E6390_G2_SMI_PHY_CMD_FUNC_EXTERNAL ; 
 int MV88E6390_G2_SMI_PHY_CMD_FUNC_INTERNAL ; 
 int MV88E6XXX_G2_SMI_PHY_CMD_DEV_ADDR_MASK ; 
 int MV88E6XXX_G2_SMI_PHY_CMD_MODE_22 ; 
 int MV88E6XXX_G2_SMI_PHY_CMD_MODE_45 ; 
 int MV88E6XXX_G2_SMI_PHY_CMD_REG_ADDR_MASK ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int) ; 

__attribute__((used)) static int FUNC2(struct mv88e6xxx_chip *chip,
				       bool external, bool c45, u16 op, int dev,
				       int reg)
{
	u16 cmd = op;

	if (external)
		cmd |= MV88E6390_G2_SMI_PHY_CMD_FUNC_EXTERNAL;
	else
		cmd |= MV88E6390_G2_SMI_PHY_CMD_FUNC_INTERNAL; /* empty mask */

	if (c45)
		cmd |= MV88E6XXX_G2_SMI_PHY_CMD_MODE_45; /* empty mask */
	else
		cmd |= MV88E6XXX_G2_SMI_PHY_CMD_MODE_22;

	dev <<= FUNC0(MV88E6XXX_G2_SMI_PHY_CMD_DEV_ADDR_MASK);
	cmd |= dev & MV88E6XXX_G2_SMI_PHY_CMD_DEV_ADDR_MASK;
	cmd |= reg & MV88E6XXX_G2_SMI_PHY_CMD_REG_ADDR_MASK;

	return FUNC1(chip, cmd);
}
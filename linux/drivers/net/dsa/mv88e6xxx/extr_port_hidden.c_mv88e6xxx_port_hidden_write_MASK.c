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
 int /*<<< orphan*/  MV88E6XXX_PORT_RESERVED_1A ; 
 int MV88E6XXX_PORT_RESERVED_1A_BLOCK_SHIFT ; 
 int MV88E6XXX_PORT_RESERVED_1A_BUSY ; 
 int /*<<< orphan*/  MV88E6XXX_PORT_RESERVED_1A_CTRL_PORT ; 
 int /*<<< orphan*/  MV88E6XXX_PORT_RESERVED_1A_DATA_PORT ; 
 int MV88E6XXX_PORT_RESERVED_1A_PORT_SHIFT ; 
 int MV88E6XXX_PORT_RESERVED_1A_WRITE ; 
 int FUNC0 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct mv88e6xxx_chip *chip, int block,
				int port, int reg, u16 val)
{
	u16 ctrl;
	int err;

	err = FUNC0(chip, MV88E6XXX_PORT_RESERVED_1A_DATA_PORT,
				   MV88E6XXX_PORT_RESERVED_1A, val);
	if (err)
		return err;

	ctrl = MV88E6XXX_PORT_RESERVED_1A_BUSY |
	       MV88E6XXX_PORT_RESERVED_1A_WRITE |
	       block << MV88E6XXX_PORT_RESERVED_1A_BLOCK_SHIFT |
	       port << MV88E6XXX_PORT_RESERVED_1A_PORT_SHIFT |
	       reg;

	return FUNC0(chip, MV88E6XXX_PORT_RESERVED_1A_CTRL_PORT,
				    MV88E6XXX_PORT_RESERVED_1A, ctrl);
}
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
struct mv88e6xxx_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  DUPLEX_FULL 130 
#define  DUPLEX_HALF 129 
#define  DUPLEX_UNFORCED 128 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MV88E6XXX_PORT_MAC_CTL ; 
 int MV88E6XXX_PORT_MAC_CTL_DUPLEX_FULL ; 
 int MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char*,char*) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct mv88e6xxx_chip *chip, int port, int dup)
{
	u16 reg;
	int err;

	err = FUNC1(chip, port, MV88E6XXX_PORT_MAC_CTL, &reg);
	if (err)
		return err;

	reg &= ~(MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX |
		 MV88E6XXX_PORT_MAC_CTL_DUPLEX_FULL);

	switch (dup) {
	case DUPLEX_HALF:
		reg |= MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX;
		break;
	case DUPLEX_FULL:
		reg |= MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX |
			MV88E6XXX_PORT_MAC_CTL_DUPLEX_FULL;
		break;
	case DUPLEX_UNFORCED:
		/* normal duplex detection */
		break;
	default:
		return -EOPNOTSUPP;
	}

	err = FUNC2(chip, port, MV88E6XXX_PORT_MAC_CTL, reg);
	if (err)
		return err;

	FUNC0(chip->dev, "p%d: %s %s duplex\n", port,
		reg & MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX ? "Force" : "Unforce",
		reg & MV88E6XXX_PORT_MAC_CTL_DUPLEX_FULL ? "full" : "half");

	return 0;
}
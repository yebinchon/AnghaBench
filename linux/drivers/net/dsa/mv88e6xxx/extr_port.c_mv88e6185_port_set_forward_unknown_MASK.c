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
 int /*<<< orphan*/  MV88E6185_PORT_CTL0_FORWARD_UNKNOWN ; 
 int /*<<< orphan*/  MV88E6XXX_PORT_CTL0 ; 
 int FUNC0 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mv88e6xxx_chip *chip,
					      int port, bool unicast)
{
	int err;
	u16 reg;

	err = FUNC0(chip, port, MV88E6XXX_PORT_CTL0, &reg);
	if (err)
		return err;

	if (unicast)
		reg |= MV88E6185_PORT_CTL0_FORWARD_UNKNOWN;
	else
		reg &= ~MV88E6185_PORT_CTL0_FORWARD_UNKNOWN;

	return FUNC1(chip, port, MV88E6XXX_PORT_CTL0, reg);
}
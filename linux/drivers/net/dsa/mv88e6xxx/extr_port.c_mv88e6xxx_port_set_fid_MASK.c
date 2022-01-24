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
 int EINVAL ; 
 int /*<<< orphan*/  MV88E6XXX_PORT_BASE_VLAN ; 
 int /*<<< orphan*/  MV88E6XXX_PORT_CTL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct mv88e6xxx_chip*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct mv88e6xxx_chip *chip, int port, u16 fid)
{
	const u16 upper_mask = (FUNC1(chip) - 1) >> 4;
	u16 reg;
	int err;

	if (fid >= FUNC1(chip))
		return -EINVAL;

	/* Port's default FID lower 4 bits are located in reg 0x06, offset 12 */
	err = FUNC2(chip, port, MV88E6XXX_PORT_BASE_VLAN, &reg);
	if (err)
		return err;

	reg &= 0x0fff;
	reg |= (fid & 0x000f) << 12;

	err = FUNC3(chip, port, MV88E6XXX_PORT_BASE_VLAN, reg);
	if (err)
		return err;

	/* Port's default FID upper bits are located in reg 0x05, offset 0 */
	if (upper_mask) {
		err = FUNC2(chip, port, MV88E6XXX_PORT_CTL1,
					  &reg);
		if (err)
			return err;

		reg &= ~upper_mask;
		reg |= (fid >> 4) & upper_mask;

		err = FUNC3(chip, port, MV88E6XXX_PORT_CTL1,
					   reg);
		if (err)
			return err;
	}

	FUNC0(chip->dev, "p%d: FID set to %u\n", port, fid);

	return 0;
}
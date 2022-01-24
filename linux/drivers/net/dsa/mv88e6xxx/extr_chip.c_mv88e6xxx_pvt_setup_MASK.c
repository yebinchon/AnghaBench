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
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int MV88E6XXX_MAX_PVT_PORTS ; 
 int MV88E6XXX_MAX_PVT_SWITCHES ; 
 int FUNC0 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_chip*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int,int) ; 

__attribute__((used)) static int FUNC3(struct mv88e6xxx_chip *chip)
{
	int dev, port;
	int err;

	if (!FUNC1(chip))
		return 0;

	/* Clear 5 Bit Port for usage with Marvell Link Street devices:
	 * use 4 bits for the Src_Port/Src_Trunk and 5 bits for the Src_Dev.
	 */
	err = FUNC0(chip);
	if (err)
		return err;

	for (dev = 0; dev < MV88E6XXX_MAX_PVT_SWITCHES; ++dev) {
		for (port = 0; port < MV88E6XXX_MAX_PVT_PORTS; ++port) {
			err = FUNC2(chip, dev, port);
			if (err)
				return err;
		}
	}

	return 0;
}
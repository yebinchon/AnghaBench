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
struct mv88e6xxx_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MV88E6XXX_PHY_PAGE ; 
 int /*<<< orphan*/  MV88E6XXX_PHY_PAGE_COPPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct mv88e6xxx_chip *chip, int phy)
{
	int err;

	/* Restore PHY page Copper 0x0 for access via the registered
	 * MDIO bus
	 */
	err = FUNC1(chip, phy, MV88E6XXX_PHY_PAGE,
				  MV88E6XXX_PHY_PAGE_COPPER);
	if (FUNC2(err)) {
		FUNC0(chip->dev,
			"failed to restore PHY %d page Copper (%d)\n",
			phy, err);
	}
}
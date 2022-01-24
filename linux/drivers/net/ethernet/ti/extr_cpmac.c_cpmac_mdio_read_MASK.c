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
typedef  int u32 ;
struct mii_bus {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MDIO_BUSY ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct mii_bus *bus, int phy_id, int reg)
{
	u32 val;

	while (FUNC4(bus->priv, FUNC0(0)) & MDIO_BUSY)
		FUNC6();
	FUNC5(bus->priv, FUNC0(0), MDIO_BUSY | FUNC3(reg) |
		    FUNC2(phy_id));
	while ((val = FUNC4(bus->priv, FUNC0(0))) & MDIO_BUSY)
		FUNC6();

	return FUNC1(val);
}
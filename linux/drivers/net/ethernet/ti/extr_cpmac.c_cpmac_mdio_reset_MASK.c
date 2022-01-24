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
struct mii_bus {int /*<<< orphan*/  priv; int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR7_RESET_BIT_MDIO ; 
 int /*<<< orphan*/  CPMAC_MDIO_CONTROL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (int) ; 
 int MDIOC_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct mii_bus *bus)
{
	struct clk *cpmac_clk;

	cpmac_clk = FUNC3(&bus->dev, "cpmac");
	if (FUNC0(cpmac_clk)) {
		FUNC6("unable to get cpmac clock\n");
		return -1;
	}
	FUNC2(AR7_RESET_BIT_MDIO);
	FUNC5(bus->priv, CPMAC_MDIO_CONTROL, MDIOC_ENABLE |
		    FUNC1(FUNC4(cpmac_clk) / 2200000 - 1));

	return 0;
}
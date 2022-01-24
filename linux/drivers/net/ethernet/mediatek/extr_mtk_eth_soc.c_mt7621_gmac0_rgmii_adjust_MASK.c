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
struct mtk_eth {int /*<<< orphan*/  ethsys; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ phy_interface_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETHSYS_CLKCFG0 ; 
 int /*<<< orphan*/  ETHSYS_SYSCFG ; 
 int ETHSYS_TRGMII_MT7621_DDR_PLL ; 
 int /*<<< orphan*/  ETHSYS_TRGMII_MT7621_MASK ; 
 scalar_t__ PHY_INTERFACE_MODE_TRGMII ; 
 int SYSCFG_DRAM_TYPE_DDR2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct mtk_eth *eth,
				     phy_interface_t interface)
{
	u32 val;

	/* Check DDR memory type.
	 * Currently TRGMII mode with DDR2 memory is not supported.
	 */
	FUNC1(eth->ethsys, ETHSYS_SYSCFG, &val);
	if (interface == PHY_INTERFACE_MODE_TRGMII &&
	    val & SYSCFG_DRAM_TYPE_DDR2) {
		FUNC0(eth->dev,
			"TRGMII mode with DDR2 memory is not supported!\n");
		return -EOPNOTSUPP;
	}

	val = (interface == PHY_INTERFACE_MODE_TRGMII) ?
		ETHSYS_TRGMII_MT7621_DDR_PLL : 0;

	FUNC2(eth->ethsys, ETHSYS_CLKCFG0,
			   ETHSYS_TRGMII_MT7621_MASK, val);

	return 0;
}
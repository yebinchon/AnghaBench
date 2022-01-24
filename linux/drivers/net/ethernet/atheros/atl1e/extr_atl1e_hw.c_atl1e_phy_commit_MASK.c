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
typedef  int u16 ;
struct atl1e_hw {struct atl1e_adapter* adapter; } ;
struct atl1e_adapter {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int FUNC0 (struct atl1e_hw*,int /*<<< orphan*/ ) ; 
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int BMCR_RESET ; 
 int MDIO_BUSY ; 
 int MDIO_START ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  REG_MDIO_CTRL ; 
 int FUNC1 (struct atl1e_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC4(struct atl1e_hw *hw)
{
	struct atl1e_adapter *adapter = hw->adapter;
	int ret_val;
	u16 phy_data;

	phy_data = BMCR_RESET | BMCR_ANENABLE | BMCR_ANRESTART;

	ret_val = FUNC1(hw, MII_BMCR, phy_data);
	if (ret_val) {
		u32 val;
		int i;
		/**************************************
		 * pcie serdes link may be down !
		 **************************************/
		for (i = 0; i < 25; i++) {
			FUNC2(1);
			val = FUNC0(hw, REG_MDIO_CTRL);
			if (!(val & (MDIO_START | MDIO_BUSY)))
				break;
		}

		if (0 != (val & (MDIO_START | MDIO_BUSY))) {
			FUNC3(adapter->netdev,
				   "pcie linkdown at least for 25ms\n");
			return ret_val;
		}

		FUNC3(adapter->netdev, "pcie linkup after %d ms\n", i);
	}
	return 0;
}
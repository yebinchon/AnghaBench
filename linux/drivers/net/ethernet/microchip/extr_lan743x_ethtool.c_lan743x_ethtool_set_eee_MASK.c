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
typedef  int /*<<< orphan*/  u32 ;
struct phy_device {int /*<<< orphan*/  drv; } ;
struct net_device {struct phy_device* phydev; } ;
struct lan743x_adapter {int /*<<< orphan*/  netdev; } ;
struct ethtool_eee {scalar_t__ tx_lpi_timer; scalar_t__ eee_enabled; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  MAC_CR ; 
 int /*<<< orphan*/  MAC_CR_EEE_EN_ ; 
 int /*<<< orphan*/  MAC_EEE_TX_LPI_REQ_DLY_CNT ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lan743x_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct phy_device*,struct ethtool_eee*) ; 
 int FUNC5 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev,
				   struct ethtool_eee *eee)
{
	struct lan743x_adapter *adapter = FUNC2(netdev);
	struct phy_device *phydev = NULL;
	u32 buf = 0;
	int ret = 0;

	if (!netdev)
		return -EINVAL;
	adapter = FUNC2(netdev);
	if (!adapter)
		return -EINVAL;
	phydev = netdev->phydev;
	if (!phydev)
		return -EIO;
	if (!phydev->drv) {
		FUNC3(adapter, drv, adapter->netdev,
			  "Missing PHY Driver\n");
		return -EIO;
	}

	if (eee->eee_enabled) {
		ret = FUNC5(phydev, 0);
		if (ret) {
			FUNC3(adapter, drv, adapter->netdev,
				  "EEE initialization failed\n");
			return ret;
		}

		buf = (u32)eee->tx_lpi_timer;
		FUNC1(adapter, MAC_EEE_TX_LPI_REQ_DLY_CNT, buf);

		buf = FUNC0(adapter, MAC_CR);
		buf |= MAC_CR_EEE_EN_;
		FUNC1(adapter, MAC_CR, buf);
	} else {
		buf = FUNC0(adapter, MAC_CR);
		buf &= ~MAC_CR_EEE_EN_;
		FUNC1(adapter, MAC_CR, buf);
	}

	return FUNC4(phydev, eee);
}
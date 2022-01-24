#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ eee_speeds_advertised; scalar_t__ eee_speeds_supported; } ;
struct ixgbe_hw {TYPE_1__ phy; } ;
struct ixgbe_adapter {int flags2; struct ixgbe_hw hw; } ;
struct ethtool_eee {scalar_t__ eee_enabled; scalar_t__ tx_lpi_enabled; scalar_t__ tx_lpi_timer; scalar_t__ advertised; } ;
typedef  int s32 ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int IXGBE_FLAG2_EEE_CAPABLE ; 
 int IXGBE_FLAG2_EEE_ENABLED ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct net_device*,struct ethtool_eee*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ethtool_eee*,int /*<<< orphan*/ ,int) ; 
 struct ixgbe_adapter* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, struct ethtool_eee *edata)
{
	struct ixgbe_adapter *adapter = FUNC5(netdev);
	struct ixgbe_hw *hw = &adapter->hw;
	struct ethtool_eee eee_data;
	s32 ret_val;

	if (!(adapter->flags2 & IXGBE_FLAG2_EEE_CAPABLE))
		return -EOPNOTSUPP;

	FUNC4(&eee_data, 0, sizeof(struct ethtool_eee));

	ret_val = FUNC1(netdev, &eee_data);
	if (ret_val)
		return ret_val;

	if (eee_data.eee_enabled && !edata->eee_enabled) {
		if (eee_data.tx_lpi_enabled != edata->tx_lpi_enabled) {
			FUNC0(drv, "Setting EEE tx-lpi is not supported\n");
			return -EINVAL;
		}

		if (eee_data.tx_lpi_timer != edata->tx_lpi_timer) {
			FUNC0(drv,
			      "Setting EEE Tx LPI timer is not supported\n");
			return -EINVAL;
		}

		if (eee_data.advertised != edata->advertised) {
			FUNC0(drv,
			      "Setting EEE advertised speeds is not supported\n");
			return -EINVAL;
		}
	}

	if (eee_data.eee_enabled != edata->eee_enabled) {
		if (edata->eee_enabled) {
			adapter->flags2 |= IXGBE_FLAG2_EEE_ENABLED;
			hw->phy.eee_speeds_advertised =
						   hw->phy.eee_speeds_supported;
		} else {
			adapter->flags2 &= ~IXGBE_FLAG2_EEE_ENABLED;
			hw->phy.eee_speeds_advertised = 0;
		}

		/* reset link */
		if (FUNC6(netdev))
			FUNC2(adapter);
		else
			FUNC3(adapter);
	}

	return 0;
}
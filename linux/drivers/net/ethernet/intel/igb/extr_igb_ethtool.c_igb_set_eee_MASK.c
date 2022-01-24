#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_7__ {int eee_disable; } ;
struct TYPE_8__ {TYPE_2__ _82575; } ;
struct TYPE_6__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_4__ mac; TYPE_3__ dev_spec; TYPE_1__ phy; } ;
struct igb_adapter {TYPE_5__* pdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  eee_advert; struct e1000_hw hw; } ;
struct ethtool_eee {scalar_t__ tx_lpi_enabled; int advertised; scalar_t__ eee_enabled; scalar_t__ tx_lpi_timer; } ;
typedef  int s32 ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ADVERTISE_1000_FULL ; 
 int ADVERTISE_100_FULL ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IGB_FLAG_EEE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ e1000_i350 ; 
 scalar_t__ e1000_i354 ; 
 scalar_t__ e1000_media_type_copper ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct net_device*,struct ethtool_eee*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*) ; 
 int FUNC5 (struct e1000_hw*,int,int) ; 
 int FUNC6 (struct e1000_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ethtool_eee*,int /*<<< orphan*/ ,int) ; 
 struct igb_adapter* FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev,
		       struct ethtool_eee *edata)
{
	struct igb_adapter *adapter = FUNC8(netdev);
	struct e1000_hw *hw = &adapter->hw;
	struct ethtool_eee eee_curr;
	bool adv1g_eee = true, adv100m_eee = true;
	s32 ret_val;

	if ((hw->mac.type < e1000_i350) ||
	    (hw->phy.media_type != e1000_media_type_copper))
		return -EOPNOTSUPP;

	FUNC7(&eee_curr, 0, sizeof(struct ethtool_eee));

	ret_val = FUNC2(netdev, &eee_curr);
	if (ret_val)
		return ret_val;

	if (eee_curr.eee_enabled) {
		if (eee_curr.tx_lpi_enabled != edata->tx_lpi_enabled) {
			FUNC0(&adapter->pdev->dev,
				"Setting EEE tx-lpi is not supported\n");
			return -EINVAL;
		}

		/* Tx LPI timer is not implemented currently */
		if (edata->tx_lpi_timer) {
			FUNC0(&adapter->pdev->dev,
				"Setting EEE Tx LPI timer is not supported\n");
			return -EINVAL;
		}

		if (!edata->advertised || (edata->advertised &
		    ~(ADVERTISE_100_FULL | ADVERTISE_1000_FULL))) {
			FUNC0(&adapter->pdev->dev,
				"EEE Advertisement supports only 100Tx and/or 100T full duplex\n");
			return -EINVAL;
		}
		adv100m_eee = !!(edata->advertised & ADVERTISE_100_FULL);
		adv1g_eee = !!(edata->advertised & ADVERTISE_1000_FULL);

	} else if (!edata->eee_enabled) {
		FUNC0(&adapter->pdev->dev,
			"Setting EEE options are not supported with EEE disabled\n");
		return -EINVAL;
	}

	adapter->eee_advert = FUNC1(edata->advertised);
	if (hw->dev_spec._82575.eee_disable != !edata->eee_enabled) {
		hw->dev_spec._82575.eee_disable = !edata->eee_enabled;
		adapter->flags |= IGB_FLAG_EEE;

		/* reset link */
		if (FUNC9(netdev))
			FUNC3(adapter);
		else
			FUNC4(adapter);
	}

	if (hw->mac.type == e1000_i354)
		ret_val = FUNC6(hw, adv1g_eee, adv100m_eee);
	else
		ret_val = FUNC5(hw, adv1g_eee, adv100m_eee);

	if (ret_val) {
		FUNC0(&adapter->pdev->dev,
			"Problem setting EEE advertisement options\n");
		return -EINVAL;
	}

	return 0;
}
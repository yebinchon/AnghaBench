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
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int /*<<< orphan*/  led_status; struct e1000_hw hw; } ;
typedef  enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;

/* Variables and functions */
#define  ETHTOOL_ID_ACTIVE 131 
#define  ETHTOOL_ID_INACTIVE 130 
#define  ETHTOOL_ID_OFF 129 
#define  ETHTOOL_ID_ON 128 
 int /*<<< orphan*/  IGB_LED_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 struct igb_adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev,
			   enum ethtool_phys_id_state state)
{
	struct igb_adapter *adapter = FUNC4(netdev);
	struct e1000_hw *hw = &adapter->hw;

	switch (state) {
	case ETHTOOL_ID_ACTIVE:
		FUNC1(hw);
		return 2;
	case ETHTOOL_ID_ON:
		FUNC1(hw);
		break;
	case ETHTOOL_ID_OFF:
		FUNC3(hw);
		break;
	case ETHTOOL_ID_INACTIVE:
		FUNC3(hw);
		FUNC0(IGB_LED_ON, &adapter->led_status);
		FUNC2(hw);
		break;
	}

	return 0;
}
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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_dcb_config {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_TX_CONFIG ; 
 int MAX_TRAFFIC_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_dcb_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_dcb_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_dcb_config*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_dcb_config*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_dcb_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_dcb_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  ixgbe_mac_82598EB 133 
#define  ixgbe_mac_82599EB 132 
#define  ixgbe_mac_X540 131 
#define  ixgbe_mac_X550 130 
#define  ixgbe_mac_X550EM_x 129 
#define  ixgbe_mac_x550em_a 128 

s32 FUNC8(struct ixgbe_hw *hw,
			struct ixgbe_dcb_config *dcb_config)
{
	u8 pfc_en;
	u8 ptype[MAX_TRAFFIC_CLASS];
	u8 bwgid[MAX_TRAFFIC_CLASS];
	u8 prio_tc[MAX_TRAFFIC_CLASS];
	u16 refill[MAX_TRAFFIC_CLASS];
	u16 max[MAX_TRAFFIC_CLASS];

	/* Unpack CEE standard containers */
	FUNC5(dcb_config, &pfc_en);
	FUNC7(dcb_config, DCB_TX_CONFIG, refill);
	FUNC4(dcb_config, max);
	FUNC2(dcb_config, DCB_TX_CONFIG, bwgid);
	FUNC6(dcb_config, DCB_TX_CONFIG, ptype);
	FUNC3(dcb_config, DCB_TX_CONFIG, prio_tc);

	switch (hw->mac.type) {
	case ixgbe_mac_82598EB:
		return FUNC0(hw, pfc_en, refill, max,
						 bwgid, ptype);
	case ixgbe_mac_82599EB:
	case ixgbe_mac_X540:
	case ixgbe_mac_X550:
	case ixgbe_mac_X550EM_x:
	case ixgbe_mac_x550em_a:
		return FUNC1(hw, pfc_en, refill, max,
						 bwgid, ptype, prio_tc);
	default:
		break;
	}
	return 0;
}
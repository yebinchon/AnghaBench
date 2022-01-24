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
typedef  int /*<<< orphan*/  u32 ;
struct pch_gbe_mac_info {int fc; int tx_fc_enable; scalar_t__ link_duplex; } ;
struct pch_gbe_hw {TYPE_1__* reg; struct pch_gbe_mac_info mac; } ;
struct pch_gbe_adapter {int /*<<< orphan*/  netdev; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_2__ {int /*<<< orphan*/  RX_FCTRL; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_HALF ; 
 int /*<<< orphan*/  EINVAL ; 
#define  PCH_GBE_FC_FULL 131 
#define  PCH_GBE_FC_NONE 130 
#define  PCH_GBE_FC_RX_PAUSE 129 
#define  PCH_GBE_FC_TX_PAUSE 128 
 int /*<<< orphan*/  PCH_GBE_FL_CTRL_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct pch_gbe_adapter* FUNC4 (struct pch_gbe_hw*) ; 

s32 FUNC5(struct pch_gbe_hw *hw)
{
	struct pch_gbe_adapter *adapter = FUNC4(hw);
	struct pch_gbe_mac_info *mac = &hw->mac;
	u32 rx_fctrl;

	FUNC2(adapter->netdev, "mac->fc = %u\n", mac->fc);

	rx_fctrl = FUNC0(&hw->reg->RX_FCTRL);

	switch (mac->fc) {
	case PCH_GBE_FC_NONE:
		rx_fctrl &= ~PCH_GBE_FL_CTRL_EN;
		mac->tx_fc_enable = false;
		break;
	case PCH_GBE_FC_RX_PAUSE:
		rx_fctrl |= PCH_GBE_FL_CTRL_EN;
		mac->tx_fc_enable = false;
		break;
	case PCH_GBE_FC_TX_PAUSE:
		rx_fctrl &= ~PCH_GBE_FL_CTRL_EN;
		mac->tx_fc_enable = true;
		break;
	case PCH_GBE_FC_FULL:
		rx_fctrl |= PCH_GBE_FL_CTRL_EN;
		mac->tx_fc_enable = true;
		break;
	default:
		FUNC3(adapter->netdev,
			   "Flow control param set incorrectly\n");
		return -EINVAL;
	}
	if (mac->link_duplex == DUPLEX_HALF)
		rx_fctrl &= ~PCH_GBE_FL_CTRL_EN;
	FUNC1(rx_fctrl, &hw->reg->RX_FCTRL);
	FUNC2(adapter->netdev,
		   "RX_FCTRL reg : 0x%08x  mac->tx_fc_enable : %d\n",
		   FUNC0(&hw->reg->RX_FCTRL), mac->tx_fc_enable);
	return 0;
}
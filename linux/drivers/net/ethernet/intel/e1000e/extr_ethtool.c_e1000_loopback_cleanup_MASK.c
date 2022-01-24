#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_5__ {int /*<<< orphan*/  (* commit ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; int /*<<< orphan*/  type; int /*<<< orphan*/  media_type; } ;
struct TYPE_4__ {int type; int autoneg; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
struct e1000_adapter {int tx_fifo_head; struct e1000_hw hw; } ;

/* Variables and functions */
 int BMCR_LOOPBACK ; 
 int /*<<< orphan*/  CTRL_EXT ; 
 int E1000_FEXTNVM11_DISABLE_MULR_FIX ; 
 int E1000_RCTL_LBM_MAC ; 
 int E1000_RCTL_LBM_TCVR ; 
 int E1000_SCTL_DISABLE_SERDES_LOOPBACK ; 
 int /*<<< orphan*/  FEXTNVM11 ; 
 int /*<<< orphan*/  GG82563_PHY_KMRN_MODE_CTRL ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  SCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  e1000_80003es2lan 132 
#define  e1000_82571 131 
#define  e1000_82572 130 
 int /*<<< orphan*/  e1000_media_type_fiber ; 
 int /*<<< orphan*/  e1000_media_type_internal_serdes ; 
#define  e1000_pch_cnp 129 
#define  e1000_pch_spt 128 
 int /*<<< orphan*/  e1000_phy_gg82563 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static void FUNC8(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 rctl, fext_nvm11, tarc0;
	u16 phy_reg;

	rctl = FUNC4(RCTL);
	rctl &= ~(E1000_RCTL_LBM_TCVR | E1000_RCTL_LBM_MAC);
	FUNC5(RCTL, rctl);

	switch (hw->mac.type) {
	case e1000_pch_spt:
	case e1000_pch_cnp:
		fext_nvm11 = FUNC4(FEXTNVM11);
		fext_nvm11 &= ~E1000_FEXTNVM11_DISABLE_MULR_FIX;
		FUNC5(FEXTNVM11, fext_nvm11);
		tarc0 = FUNC4(FUNC0(0));
		/* clear bits 28 & 29 (control of MULR concurrent requests) */
		/* set bit 29 (value of MULR requests is now 0) */
		tarc0 &= 0xcfffffff;
		FUNC5(FUNC0(0), tarc0);
		/* fall through */
	case e1000_80003es2lan:
		if (hw->phy.media_type == e1000_media_type_fiber ||
		    hw->phy.media_type == e1000_media_type_internal_serdes) {
			/* restore CTRL_EXT, stealing space from tx_fifo_head */
			FUNC5(CTRL_EXT, adapter->tx_fifo_head);
			adapter->tx_fifo_head = 0;
		}
		/* fall through */
	case e1000_82571:
	case e1000_82572:
		if (hw->phy.media_type == e1000_media_type_fiber ||
		    hw->phy.media_type == e1000_media_type_internal_serdes) {
			FUNC5(SCTL, E1000_SCTL_DISABLE_SERDES_LOOPBACK);
			FUNC1();
			FUNC7(10000, 11000);
			break;
		}
		/* Fall Through */
	default:
		hw->mac.autoneg = 1;
		if (hw->phy.type == e1000_phy_gg82563)
			FUNC3(hw, GG82563_PHY_KMRN_MODE_CTRL, 0x180);
		FUNC2(hw, MII_BMCR, &phy_reg);
		if (phy_reg & BMCR_LOOPBACK) {
			phy_reg &= ~BMCR_LOOPBACK;
			FUNC3(hw, MII_BMCR, phy_reg);
			if (hw->phy.ops.commit)
				hw->phy.ops.commit(hw);
		}
		break;
	}
}
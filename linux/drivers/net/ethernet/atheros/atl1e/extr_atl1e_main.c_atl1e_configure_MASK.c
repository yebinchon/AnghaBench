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
struct atl1e_hw {int max_frame_size; int smb_timer; int /*<<< orphan*/  ict; int /*<<< orphan*/  tx_count_down; int /*<<< orphan*/  rx_count_down; int /*<<< orphan*/  tpd_thresh; int /*<<< orphan*/  rrd_thresh; int /*<<< orphan*/  imt; } ;
struct atl1e_adapter {int /*<<< orphan*/  netdev; struct atl1e_hw hw; } ;

/* Variables and functions */
 int FUNC0 (struct atl1e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1e_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 int ISR_PHY_LINKDOWN ; 
 int MASTER_CTRL_ITIMER2_EN ; 
 int MASTER_CTRL_ITIMER_EN ; 
 int MASTER_CTRL_LED_MODE ; 
 int /*<<< orphan*/  REG_CMBDISDMA_TIMER ; 
 int /*<<< orphan*/  REG_IRQ_MODU_TIMER2_INIT ; 
 int /*<<< orphan*/  REG_IRQ_MODU_TIMER_INIT ; 
 int /*<<< orphan*/  REG_ISR ; 
 int /*<<< orphan*/  REG_MASTER_CTRL ; 
 int /*<<< orphan*/  REG_MTU ; 
 int /*<<< orphan*/  REG_SMB_STAT_TIMER ; 
 int /*<<< orphan*/  REG_TRIG_RRD_THRESH ; 
 int /*<<< orphan*/  REG_TRIG_RXTIMER ; 
 int /*<<< orphan*/  REG_TRIG_TPD_THRESH ; 
 int /*<<< orphan*/  REG_TRIG_TXTIMER ; 
 int /*<<< orphan*/  REG_WOL_CTRL ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC3 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct atl1e_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct atl1e_adapter *adapter)
{
	struct atl1e_hw *hw = &adapter->hw;

	u32 intr_status_data = 0;

	/* clear interrupt status */
	FUNC1(hw, REG_ISR, ~0);

	/* 1. set MAC Address */
	FUNC7(hw);

	/* 2. Init the Multicast HASH table done by set_muti */

	/* 3. Clear any WOL status */
	FUNC1(hw, REG_WOL_CTRL, 0);

	/* 4. Descripter Ring BaseMem/Length/Read ptr/Write ptr
	 *    TPD Ring/SMB/RXF0 Page CMBs, they use the same
	 *    High 32bits memory */
	FUNC3(adapter);

	/* 5. set Interrupt Moderator Timer */
	FUNC2(hw, REG_IRQ_MODU_TIMER_INIT, hw->imt);
	FUNC2(hw, REG_IRQ_MODU_TIMER2_INIT, hw->imt);
	FUNC1(hw, REG_MASTER_CTRL, MASTER_CTRL_LED_MODE |
			MASTER_CTRL_ITIMER_EN | MASTER_CTRL_ITIMER2_EN);

	/* 6. rx/tx threshold to trig interrupt */
	FUNC2(hw, REG_TRIG_RRD_THRESH, hw->rrd_thresh);
	FUNC2(hw, REG_TRIG_TPD_THRESH, hw->tpd_thresh);
	FUNC2(hw, REG_TRIG_RXTIMER, hw->rx_count_down);
	FUNC2(hw, REG_TRIG_TXTIMER, hw->tx_count_down);

	/* 7. set Interrupt Clear Timer */
	FUNC2(hw, REG_CMBDISDMA_TIMER, hw->ict);

	/* 8. set MTU */
	FUNC1(hw, REG_MTU, hw->max_frame_size + ETH_HLEN +
			VLAN_HLEN + ETH_FCS_LEN);

	/* 9. config TXQ early tx threshold */
	FUNC6(adapter);

	/* 10. config RXQ */
	FUNC5(adapter);

	/* 11. config  DMA Engine */
	FUNC4(adapter);

	/* 12. smb timer to trig interrupt */
	FUNC1(hw, REG_SMB_STAT_TIMER, hw->smb_timer);

	intr_status_data = FUNC0(hw, REG_ISR);
	if (FUNC9((intr_status_data & ISR_PHY_LINKDOWN) != 0)) {
		FUNC8(adapter->netdev,
			   "atl1e_configure failed, PCIE phy link down\n");
		return -1;
	}

	FUNC1(hw, REG_ISR, 0x7fffffff);
	return 0;
}
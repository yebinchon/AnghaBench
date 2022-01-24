#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ixgbe_ring {int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int type; } ;
struct ixgbe_hw {TYPE_2__ phy; TYPE_1__ mac; } ;
struct ixgbe_adapter {int num_tx_queues; int /*<<< orphan*/  state; int /*<<< orphan*/  flags2; struct ixgbe_ring** tx_ring; struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IXGBE_EICR ; 
 int IXGBE_EICR_ECC ; 
 int IXGBE_EICR_FLOW_DIR ; 
 int IXGBE_EICR_GPI_SDP0_X540 ; 
 int IXGBE_EICR_LSC ; 
 int IXGBE_EICR_MAILBOX ; 
 int IXGBE_EICR_TIMESYNC ; 
 int /*<<< orphan*/  IXGBE_EICS ; 
 int /*<<< orphan*/  IXGBE_EIMC ; 
 int IXGBE_EIMC_FLOW_DIR ; 
 int /*<<< orphan*/  IXGBE_FLAG2_FDIR_REQUIRES_REINIT ; 
 int /*<<< orphan*/  IXGBE_FLAG2_PHY_INTERRUPT ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  __IXGBE_RESET_REQUESTED ; 
 int /*<<< orphan*/  __IXGBE_TX_FDIR_INIT_DONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_adapter*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_adapter*,int,int) ; 
#define  ixgbe_mac_82599EB 132 
#define  ixgbe_mac_X540 131 
#define  ixgbe_mac_X550 130 
#define  ixgbe_mac_X550EM_x 129 
#define  ixgbe_mac_x550em_a 128 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  ixgbe_phy_x550em_ext_t ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *data)
{
	struct ixgbe_adapter *adapter = data;
	struct ixgbe_hw *hw = &adapter->hw;
	u32 eicr;

	/*
	 * Workaround for Silicon errata.  Use clear-by-write instead
	 * of clear-by-read.  Reading with EICS will return the
	 * interrupt causes without clearing, which later be done
	 * with the write to EICR.
	 */
	eicr = FUNC0(hw, IXGBE_EICS);

	/* The lower 16bits of the EICR register are for the queue interrupts
	 * which should be masked here in order to not accidentally clear them if
	 * the bits are high when ixgbe_msix_other is called. There is a race
	 * condition otherwise which results in possible performance loss
	 * especially if the ixgbe_msix_other interrupt is triggering
	 * consistently (as it would when PPS is turned on for the X540 device)
	 */
	eicr &= 0xFFFF0000;

	FUNC1(hw, IXGBE_EICR, eicr);

	if (eicr & IXGBE_EICR_LSC)
		FUNC4(adapter);

	if (eicr & IXGBE_EICR_MAILBOX)
		FUNC8(adapter);

	switch (hw->mac.type) {
	case ixgbe_mac_82599EB:
	case ixgbe_mac_X540:
	case ixgbe_mac_X550:
	case ixgbe_mac_X550EM_x:
	case ixgbe_mac_x550em_a:
		if (hw->phy.type == ixgbe_phy_x550em_ext_t &&
		    (eicr & IXGBE_EICR_GPI_SDP0_X540)) {
			adapter->flags2 |= IXGBE_FLAG2_PHY_INTERRUPT;
			FUNC10(adapter);
			FUNC1(hw, IXGBE_EICR,
					IXGBE_EICR_GPI_SDP0_X540);
		}
		if (eicr & IXGBE_EICR_ECC) {
			FUNC2(link, "Received ECC Err, initiating reset\n");
			FUNC11(__IXGBE_RESET_REQUESTED, &adapter->state);
			FUNC10(adapter);
			FUNC1(hw, IXGBE_EICR, IXGBE_EICR_ECC);
		}
		/* Handle Flow Director Full threshold interrupt */
		if (eicr & IXGBE_EICR_FLOW_DIR) {
			int reinit_count = 0;
			int i;
			for (i = 0; i < adapter->num_tx_queues; i++) {
				struct ixgbe_ring *ring = adapter->tx_ring[i];
				if (FUNC12(__IXGBE_TX_FDIR_INIT_DONE,
						       &ring->state))
					reinit_count++;
			}
			if (reinit_count) {
				/* no more flow director interrupts until after init */
				FUNC1(hw, IXGBE_EIMC, IXGBE_EIMC_FLOW_DIR);
				adapter->flags2 |= IXGBE_FLAG2_FDIR_REQUIRES_REINIT;
				FUNC10(adapter);
			}
		}
		FUNC6(adapter, eicr);
		FUNC5(adapter, eicr);
		break;
	default:
		break;
	}

	FUNC3(adapter, eicr);

	if (FUNC14(eicr & IXGBE_EICR_TIMESYNC))
		FUNC9(adapter);

	/* re-enable the original interrupt state, no lsc, no queues */
	if (!FUNC13(__IXGBE_DOWN, &adapter->state))
		FUNC7(adapter, false, false);

	return IRQ_HANDLED;
}
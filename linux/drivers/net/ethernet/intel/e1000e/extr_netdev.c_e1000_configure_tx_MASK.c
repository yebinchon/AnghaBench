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
typedef  int u64 ;
typedef  int u32 ;
struct e1000_tx_desc {int dummy; } ;
struct e1000_ring {int dma; int count; scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; scalar_t__ hw_addr; } ;
struct e1000_adapter {int flags2; int tx_int_delay; int tx_abs_int_delay; int flags; int txd_cmd; struct e1000_hw hw; struct e1000_ring* tx_ring; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int E1000_COLLISION_THRESHOLD ; 
 int E1000_CT_SHIFT ; 
 int E1000_RCTL_RDMTS_HEX ; 
 int E1000_TARC0_CB_MULTIQ_2_REQ ; 
 int E1000_TARC0_CB_MULTIQ_3_REQ ; 
 int E1000_TCTL_CT ; 
 int E1000_TCTL_PSP ; 
 int E1000_TCTL_RTLC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int E1000_TXDCTL_DMA_BURST_ENABLE ; 
 int E1000_TXDCTL_HTHRESH ; 
 int E1000_TXDCTL_PTHRESH ; 
 int E1000_TXDCTL_WTHRESH ; 
 int E1000_TXD_CMD_EOP ; 
 int E1000_TXD_CMD_IDE ; 
 int E1000_TXD_CMD_IFCS ; 
 int E1000_TXD_CMD_RS ; 
 int FLAG2_DMA_BURST ; 
 int FLAG2_PCIM2PCI_ARBITER_WA ; 
 int FLAG_TARC_SET_BIT_ZERO ; 
 int FLAG_TARC_SPEED_MODE_BIT ; 
 int /*<<< orphan*/  IOSFPC ; 
 int SPEED_MODE_BIT ; 
 int /*<<< orphan*/  TADV ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  TCTL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIDV ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ e1000_pch_spt ; 
 int /*<<< orphan*/  FUNC10 (struct e1000_ring*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	struct e1000_ring *tx_ring = adapter->tx_ring;
	u64 tdba;
	u32 tdlen, tctl, tarc;

	/* Setup the HW Tx Head and Tail descriptor pointers */
	tdba = tx_ring->dma;
	tdlen = tx_ring->count * sizeof(struct e1000_tx_desc);
	FUNC12(FUNC5(0), (tdba & FUNC0(32)));
	FUNC12(FUNC4(0), (tdba >> 32));
	FUNC12(FUNC7(0), tdlen);
	FUNC12(FUNC6(0), 0);
	FUNC12(FUNC8(0), 0);
	tx_ring->head = adapter->hw.hw_addr + FUNC1(0);
	tx_ring->tail = adapter->hw.hw_addr + FUNC2(0);

	FUNC14(0, tx_ring->head);
	if (adapter->flags2 & FLAG2_PCIM2PCI_ARBITER_WA)
		FUNC10(tx_ring, 0);
	else
		FUNC14(0, tx_ring->tail);

	/* Set the Tx Interrupt Delay register */
	FUNC12(TIDV, adapter->tx_int_delay);
	/* Tx irq moderation */
	FUNC12(TADV, adapter->tx_abs_int_delay);

	if (adapter->flags2 & FLAG2_DMA_BURST) {
		u32 txdctl = FUNC11(FUNC9(0));

		txdctl &= ~(E1000_TXDCTL_PTHRESH | E1000_TXDCTL_HTHRESH |
			    E1000_TXDCTL_WTHRESH);
		/* set up some performance related parameters to encourage the
		 * hardware to use the bus more efficiently in bursts, depends
		 * on the tx_int_delay to be enabled,
		 * wthresh = 1 ==> burst write is disabled to avoid Tx stalls
		 * hthresh = 1 ==> prefetch when one or more available
		 * pthresh = 0x1f ==> prefetch if internal cache 31 or less
		 * BEWARE: this seems to work but should be considered first if
		 * there are Tx hangs or other Tx related bugs
		 */
		txdctl |= E1000_TXDCTL_DMA_BURST_ENABLE;
		FUNC12(FUNC9(0), txdctl);
	}
	/* erratum work around: set txdctl the same for both queues */
	FUNC12(FUNC9(1), FUNC11(FUNC9(0)));

	/* Program the Transmit Control Register */
	tctl = FUNC11(TCTL);
	tctl &= ~E1000_TCTL_CT;
	tctl |= E1000_TCTL_PSP | E1000_TCTL_RTLC |
		(E1000_COLLISION_THRESHOLD << E1000_CT_SHIFT);

	if (adapter->flags & FLAG_TARC_SPEED_MODE_BIT) {
		tarc = FUNC11(FUNC3(0));
		/* set the speed mode bit, we'll clear it if we're not at
		 * gigabit link later
		 */
#define SPEED_MODE_BIT BIT(21)
		tarc |= SPEED_MODE_BIT;
		FUNC12(FUNC3(0), tarc);
	}

	/* errata: program both queues to unweighted RR */
	if (adapter->flags & FLAG_TARC_SET_BIT_ZERO) {
		tarc = FUNC11(FUNC3(0));
		tarc |= 1;
		FUNC12(FUNC3(0), tarc);
		tarc = FUNC11(FUNC3(1));
		tarc |= 1;
		FUNC12(FUNC3(1), tarc);
	}

	/* Setup Transmit Descriptor Settings for eop descriptor */
	adapter->txd_cmd = E1000_TXD_CMD_EOP | E1000_TXD_CMD_IFCS;

	/* only set IDE if we are delaying interrupts using the timers */
	if (adapter->tx_int_delay)
		adapter->txd_cmd |= E1000_TXD_CMD_IDE;

	/* enable Report Status bit */
	adapter->txd_cmd |= E1000_TXD_CMD_RS;

	FUNC12(TCTL, tctl);

	hw->mac.ops.config_collision_dist(hw);

	/* SPT and KBL Si errata workaround to avoid data corruption */
	if (hw->mac.type == e1000_pch_spt) {
		u32 reg_val;

		reg_val = FUNC11(IOSFPC);
		reg_val |= E1000_RCTL_RDMTS_HEX;
		FUNC12(IOSFPC, reg_val);

		reg_val = FUNC11(FUNC3(0));
		/* SPT and KBL Si errata workaround to avoid Tx hang.
		 * Dropping the number of outstanding requests from
		 * 3 to 2 in order to avoid a buffer overrun.
		 */
		reg_val &= ~E1000_TARC0_CB_MULTIQ_3_REQ;
		reg_val |= E1000_TARC0_CB_MULTIQ_2_REQ;
		FUNC12(FUNC3(0), reg_val);
	}
}
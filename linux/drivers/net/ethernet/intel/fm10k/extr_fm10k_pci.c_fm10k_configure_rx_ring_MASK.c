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
typedef  union fm10k_rx_desc {int dummy; } fm10k_rx_desc ;
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct fm10k_ring {int dma; int count; int reg_idx; TYPE_2__* q_vector; int /*<<< orphan*/  vid; int /*<<< orphan*/  qos_pc; scalar_t__ next_to_alloc; scalar_t__ next_to_use; scalar_t__ next_to_clean; int /*<<< orphan*/ * tail; } ;
struct TYPE_3__ {int /*<<< orphan*/  default_vid; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
struct fm10k_intfc {int rx_pause; int pfc_en; int /*<<< orphan*/  active_vlans; int /*<<< orphan*/ * uc_addr; struct fm10k_hw hw; } ;
struct TYPE_4__ {int v_idx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FM10K_INT_MAP_DISABLE ; 
 int FM10K_INT_MAP_TIMER1 ; 
 size_t FUNC2 (int) ; 
 size_t FUNC3 (int) ; 
 size_t FUNC4 (int) ; 
 size_t FUNC5 (int) ; 
 size_t FUNC6 (int) ; 
 size_t FUNC7 (int) ; 
 int FM10K_RXDCTL_DROP_ON_EMPTY ; 
 int FM10K_RXDCTL_WRITE_BACK_MIN_DELAY ; 
 size_t FUNC8 (int) ; 
 size_t FUNC9 (int) ; 
 int FM10K_RXQCTL_ENABLE ; 
 int FM10K_RX_BUFSZ ; 
 size_t FUNC10 (int) ; 
 int FM10K_SRRCTL_BSIZEPKT_SHIFT ; 
 int FM10K_SRRCTL_BUFFER_CHAINING_EN ; 
 int FM10K_SRRCTL_LOOPBACK_SUPPRESS ; 
 int /*<<< orphan*/  FM10K_VLAN_CLEAR ; 
 int NON_Q_VECTORS ; 
 int /*<<< orphan*/  FUNC11 (struct fm10k_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct fm10k_ring*) ; 
 int FUNC13 (struct fm10k_hw*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct fm10k_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct fm10k_hw*,size_t,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct fm10k_intfc *interface,
				    struct fm10k_ring *ring)
{
	u64 rdba = ring->dma;
	struct fm10k_hw *hw = &interface->hw;
	u32 size = ring->count * sizeof(union fm10k_rx_desc);
	u32 rxqctl, rxdctl = FM10K_RXDCTL_WRITE_BACK_MIN_DELAY;
	u32 srrctl = FM10K_SRRCTL_BUFFER_CHAINING_EN;
	u32 rxint = FM10K_INT_MAP_DISABLE;
	u8 rx_pause = interface->rx_pause;
	u8 reg_idx = ring->reg_idx;

	/* disable queue to avoid issues while updating state */
	rxqctl = FUNC13(hw, FUNC9(reg_idx));
	rxqctl &= ~FM10K_RXQCTL_ENABLE;
	FUNC15(hw, FUNC9(reg_idx), rxqctl);
	FUNC14(hw);

	/* possible poll here to verify ring resources have been cleaned */

	/* set location and size for descriptor ring */
	FUNC15(hw, FUNC3(reg_idx), rdba & FUNC1(32));
	FUNC15(hw, FUNC2(reg_idx), rdba >> 32);
	FUNC15(hw, FUNC5(reg_idx), size);

	/* reset head and tail pointers */
	FUNC15(hw, FUNC4(reg_idx), 0);
	FUNC15(hw, FUNC6(reg_idx), 0);

	/* store tail pointer */
	ring->tail = &interface->uc_addr[FUNC6(reg_idx)];

	/* reset ntu and ntc to place SW in sync with hardware */
	ring->next_to_clean = 0;
	ring->next_to_use = 0;
	ring->next_to_alloc = 0;

	/* Configure the Rx buffer size for one buff without split */
	srrctl |= FM10K_RX_BUFSZ >> FM10K_SRRCTL_BSIZEPKT_SHIFT;

	/* Configure the Rx ring to suppress loopback packets */
	srrctl |= FM10K_SRRCTL_LOOPBACK_SUPPRESS;
	FUNC15(hw, FUNC10(reg_idx), srrctl);

	/* Enable drop on empty */
#ifdef CONFIG_DCB
	if (interface->pfc_en)
		rx_pause = interface->pfc_en;
#endif
	if (!(rx_pause & FUNC0(ring->qos_pc)))
		rxdctl |= FM10K_RXDCTL_DROP_ON_EMPTY;

	FUNC15(hw, FUNC7(reg_idx), rxdctl);

	/* assign default VLAN to queue */
	ring->vid = hw->mac.default_vid;

	/* if we have an active VLAN, disable default VLAN ID */
	if (FUNC16(hw->mac.default_vid, interface->active_vlans))
		ring->vid |= FM10K_VLAN_CLEAR;

	/* Map interrupt */
	if (ring->q_vector) {
		rxint = ring->q_vector->v_idx + NON_Q_VECTORS;
		rxint |= FM10K_INT_MAP_TIMER1;
	}

	FUNC15(hw, FUNC8(reg_idx), rxint);

	/* enable queue */
	rxqctl = FUNC13(hw, FUNC9(reg_idx));
	rxqctl |= FM10K_RXQCTL_ENABLE;
	FUNC15(hw, FUNC9(reg_idx), rxqctl);

	/* place buffers on ring for receive data */
	FUNC11(ring, FUNC12(ring));
}
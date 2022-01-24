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
typedef  int u64 ;
typedef  int u32 ;
struct fm10k_tx_desc {int dummy; } ;
struct fm10k_ring {int dma; int count; int /*<<< orphan*/  queue_index; TYPE_1__* q_vector; int /*<<< orphan*/  netdev; int /*<<< orphan*/  state; scalar_t__ next_to_use; scalar_t__ next_to_clean; int /*<<< orphan*/ * tail; int /*<<< orphan*/  reg_idx; } ;
struct fm10k_hw {int dummy; } ;
struct fm10k_intfc {int /*<<< orphan*/ * uc_addr; struct fm10k_hw hw; } ;
struct TYPE_2__ {int v_idx; int /*<<< orphan*/  affinity_mask; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FM10K_INT_MAP_DISABLE ; 
 int FM10K_INT_MAP_TIMER0 ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int FM10K_PFVTCTL_FTAG_DESC_ENABLE ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int FM10K_TXDCTL_ENABLE ; 
 int /*<<< orphan*/  FM10K_TXDCTL_MAX_TIME_SHIFT ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int NON_Q_VECTORS ; 
 int /*<<< orphan*/  __FM10K_TX_XPS_INIT_DONE ; 
 int /*<<< orphan*/  FUNC10 (struct fm10k_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct fm10k_hw*,size_t,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct fm10k_intfc *interface,
				    struct fm10k_ring *ring)
{
	struct fm10k_hw *hw = &interface->hw;
	u64 tdba = ring->dma;
	u32 size = ring->count * sizeof(struct fm10k_tx_desc);
	u32 txint = FM10K_INT_MAP_DISABLE;
	u32 txdctl = FUNC0(FM10K_TXDCTL_MAX_TIME_SHIFT) | FM10K_TXDCTL_ENABLE;
	u8 reg_idx = ring->reg_idx;

	/* disable queue to avoid issues while updating state */
	FUNC11(hw, FUNC8(reg_idx), 0);
	FUNC10(hw);

	/* possible poll here to verify ring resources have been cleaned */

	/* set location and size for descriptor ring */
	FUNC11(hw, FUNC4(reg_idx), tdba & FUNC1(32));
	FUNC11(hw, FUNC3(reg_idx), tdba >> 32);
	FUNC11(hw, FUNC6(reg_idx), size);

	/* reset head and tail pointers */
	FUNC11(hw, FUNC5(reg_idx), 0);
	FUNC11(hw, FUNC7(reg_idx), 0);

	/* store tail pointer */
	ring->tail = &interface->uc_addr[FUNC7(reg_idx)];

	/* reset ntu and ntc to place SW in sync with hardware */
	ring->next_to_clean = 0;
	ring->next_to_use = 0;

	/* Map interrupt */
	if (ring->q_vector) {
		txint = ring->q_vector->v_idx + NON_Q_VECTORS;
		txint |= FM10K_INT_MAP_TIMER0;
	}

	FUNC11(hw, FUNC9(reg_idx), txint);

	/* enable use of FTAG bit in Tx descriptor, register is RO for VF */
	FUNC11(hw, FUNC2(reg_idx),
			FM10K_PFVTCTL_FTAG_DESC_ENABLE);

	/* Initialize XPS */
	if (!FUNC13(__FM10K_TX_XPS_INIT_DONE, ring->state) &&
	    ring->q_vector)
		FUNC12(ring->netdev,
				    &ring->q_vector->affinity_mask,
				    ring->queue_index);

	/* enable queue */
	FUNC11(hw, FUNC8(reg_idx), txdctl);
}
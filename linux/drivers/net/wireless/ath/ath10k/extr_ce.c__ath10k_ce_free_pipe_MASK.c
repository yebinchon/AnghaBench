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
struct ce_desc {int dummy; } ;
struct ath10k_ce_pipe {TYPE_2__* dest_ring; TYPE_2__* src_ring; } ;
struct ath10k_ce {struct ath10k_ce_pipe* ce_states; } ;
struct TYPE_3__ {scalar_t__ shadow_reg_support; } ;
struct ath10k {int /*<<< orphan*/  dev; TYPE_1__ hw_params; } ;
struct TYPE_4__ {int nentries; int /*<<< orphan*/  base_addr_ce_space; int /*<<< orphan*/  base_addr_owner_space; struct TYPE_4__* shadow_base_unaligned; } ;

/* Variables and functions */
 scalar_t__ CE_DESC_RING_ALIGN ; 
 struct ath10k_ce* FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct ath10k *ar, int ce_id)
{
	struct ath10k_ce *ce = FUNC0(ar);
	struct ath10k_ce_pipe *ce_state = &ce->ce_states[ce_id];

	if (ce_state->src_ring) {
		if (ar->hw_params.shadow_reg_support)
			FUNC2(ce_state->src_ring->shadow_base_unaligned);
		FUNC1(ar->dev,
				  (ce_state->src_ring->nentries *
				   sizeof(struct ce_desc) +
				   CE_DESC_RING_ALIGN),
				  ce_state->src_ring->base_addr_owner_space,
				  ce_state->src_ring->base_addr_ce_space);
		FUNC2(ce_state->src_ring);
	}

	if (ce_state->dest_ring) {
		FUNC1(ar->dev,
				  (ce_state->dest_ring->nentries *
				   sizeof(struct ce_desc) +
				   CE_DESC_RING_ALIGN),
				  ce_state->dest_ring->base_addr_owner_space,
				  ce_state->dest_ring->base_addr_ce_space);
		FUNC2(ce_state->dest_ring);
	}

	ce_state->src_ring = NULL;
	ce_state->dest_ring = NULL;
}
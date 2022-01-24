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
typedef  int /*<<< orphan*/  u32 ;
struct ce_desc_64 {scalar_t__ nbytes; int /*<<< orphan*/  addr; } ;
struct ath10k_ce_ring {unsigned int nentries_mask; unsigned int write_index; unsigned int sw_index; void** per_transfer_context; struct ce_desc_64* base_addr_owner_space; } ;
struct ath10k_ce_pipe {int /*<<< orphan*/  ctrl_addr; struct ath10k_ce_ring* dest_ring; struct ath10k* ar; } ;
struct ath10k_ce {int /*<<< orphan*/  ce_lock; } ;
struct ath10k {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CE_DESC_ADDR_MASK ; 
 struct ce_desc_64* FUNC0 (struct ce_desc_64*,unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int /*<<< orphan*/ ,unsigned int) ; 
 struct ath10k_ce* FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ath10k_ce_pipe *pipe,
				      void *ctx,
				      dma_addr_t paddr)
{
	struct ath10k *ar = pipe->ar;
	struct ath10k_ce *ce = FUNC5(ar);
	struct ath10k_ce_ring *dest_ring = pipe->dest_ring;
	unsigned int nentries_mask = dest_ring->nentries_mask;
	unsigned int write_index = dest_ring->write_index;
	unsigned int sw_index = dest_ring->sw_index;
	struct ce_desc_64 *base = dest_ring->base_addr_owner_space;
	struct ce_desc_64 *desc =
			FUNC0(base, write_index);
	u32 ctrl_addr = pipe->ctrl_addr;

	FUNC6(&ce->ce_lock);

	if (FUNC1(nentries_mask, write_index, sw_index - 1) == 0)
		return -ENOSPC;

	desc->addr = FUNC3(paddr);
	desc->addr &= FUNC3(CE_DESC_ADDR_MASK);

	desc->nbytes = 0;

	dest_ring->per_transfer_context[write_index] = ctx;
	write_index = FUNC2(nentries_mask, write_index);
	FUNC4(ar, ctrl_addr, write_index);
	dest_ring->write_index = write_index;

	return 0;
}
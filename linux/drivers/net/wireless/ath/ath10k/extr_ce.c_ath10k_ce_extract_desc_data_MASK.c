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
struct ce_desc {int /*<<< orphan*/  flags; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  addr; } ;
struct ath10k_ce_ring {struct ce_desc* base_addr_owner_space; } ;
struct ath10k {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CE_DESC_FLAGS_META_DATA ; 
 struct ce_desc* FUNC0 (struct ce_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ath10k *ar,
					struct ath10k_ce_ring *src_ring,
					u32 sw_index,
					dma_addr_t *bufferp,
					u32 *nbytesp,
					u32 *transfer_idp)
{
		struct ce_desc *base = src_ring->base_addr_owner_space;
		struct ce_desc *desc = FUNC0(base, sw_index);

		/* Return data from completed source descriptor */
		*bufferp = FUNC3(desc->addr);
		*nbytesp = FUNC2(desc->nbytes);
		*transfer_idp = FUNC1(FUNC2(desc->flags),
				   CE_DESC_FLAGS_META_DATA);
}
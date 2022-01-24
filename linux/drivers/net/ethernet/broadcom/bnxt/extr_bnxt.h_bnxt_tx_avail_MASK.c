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
typedef  scalar_t__ u32 ;
struct bnxt_tx_ring_info {int tx_prod; int tx_cons; } ;
struct bnxt {int tx_ring_mask; scalar_t__ tx_ring_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static inline u32 FUNC1(struct bnxt *bp, struct bnxt_tx_ring_info *txr)
{
	/* Tell compiler to fetch tx indices from memory. */
	FUNC0();

	return bp->tx_ring_size -
		((txr->tx_prod - txr->tx_cons) & bp->tx_ring_mask);
}
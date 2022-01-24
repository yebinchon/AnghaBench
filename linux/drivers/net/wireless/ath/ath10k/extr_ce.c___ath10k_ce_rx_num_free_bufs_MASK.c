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
struct ath10k_ce_ring {unsigned int nentries_mask; unsigned int write_index; unsigned int sw_index; } ;
struct ath10k_ce_pipe {struct ath10k_ce_ring* dest_ring; struct ath10k* ar; } ;
struct ath10k_ce {int /*<<< orphan*/  ce_lock; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 struct ath10k_ce* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct ath10k_ce_pipe *pipe)
{
	struct ath10k *ar = pipe->ar;
	struct ath10k_ce *ce = FUNC1(ar);
	struct ath10k_ce_ring *dest_ring = pipe->dest_ring;
	unsigned int nentries_mask = dest_ring->nentries_mask;
	unsigned int write_index = dest_ring->write_index;
	unsigned int sw_index = dest_ring->sw_index;

	FUNC2(&ce->ce_lock);

	return FUNC0(nentries_mask, write_index, sw_index - 1);
}
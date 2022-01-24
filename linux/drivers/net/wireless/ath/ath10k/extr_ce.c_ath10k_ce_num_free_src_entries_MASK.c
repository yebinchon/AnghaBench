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
struct ath10k_ce_pipe {TYPE_1__* src_ring; struct ath10k* ar; } ;
struct ath10k_ce {int /*<<< orphan*/  ce_lock; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {scalar_t__ sw_index; int /*<<< orphan*/  write_index; int /*<<< orphan*/  nentries_mask; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct ath10k_ce* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ath10k_ce_pipe *pipe)
{
	struct ath10k *ar = pipe->ar;
	struct ath10k_ce *ce = FUNC1(ar);
	int delta;

	FUNC2(&ce->ce_lock);
	delta = FUNC0(pipe->src_ring->nentries_mask,
			      pipe->src_ring->write_index,
			      pipe->src_ring->sw_index - 1);
	FUNC3(&ce->ce_lock);

	return delta;
}
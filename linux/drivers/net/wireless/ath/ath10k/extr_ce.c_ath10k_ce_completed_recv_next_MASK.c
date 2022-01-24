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
struct ath10k_ce_pipe {TYPE_1__* ops; struct ath10k* ar; } ;
struct ath10k_ce {int /*<<< orphan*/  ce_lock; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int (* ce_completed_recv_next_nolock ) (struct ath10k_ce_pipe*,void**,unsigned int*) ;} ;

/* Variables and functions */
 struct ath10k_ce* FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ath10k_ce_pipe*,void**,unsigned int*) ; 

int FUNC4(struct ath10k_ce_pipe *ce_state,
				  void **per_transfer_contextp,
				  unsigned int *nbytesp)
{
	struct ath10k *ar = ce_state->ar;
	struct ath10k_ce *ce = FUNC0(ar);
	int ret;

	FUNC1(&ce->ce_lock);
	ret = ce_state->ops->ce_completed_recv_next_nolock(ce_state,
						   per_transfer_contextp,
						   nbytesp);

	FUNC2(&ce->ce_lock);

	return ret;
}
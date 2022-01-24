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
struct ath10k_ce_pipe {struct ath10k* ar; } ;
struct ath10k_ce {int /*<<< orphan*/  ce_lock; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ath10k_ce_pipe*,void**) ; 
 struct ath10k_ce* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ath10k_ce_pipe *ce_state,
				  void **per_transfer_contextp)
{
	struct ath10k *ar = ce_state->ar;
	struct ath10k_ce *ce = FUNC1(ar);
	int ret;

	FUNC2(&ce->ce_lock);
	ret = FUNC0(ce_state,
						   per_transfer_contextp);
	FUNC3(&ce->ce_lock);

	return ret;
}
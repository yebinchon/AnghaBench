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
struct ath10k_ce_pipe {int attr_flags; } ;
struct ath10k_ce {struct ath10k_ce_pipe* ce_states; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int CE_ATTR_POLL ; 
 int CE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ) ; 
 struct ath10k_ce* FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int /*<<< orphan*/ ) ; 

int FUNC5(struct ath10k *ar)
{
	struct ath10k_ce *ce = FUNC3(ar);
	struct ath10k_ce_pipe *ce_state;
	u32 ctrl_addr;
	int ce_id;

	for (ce_id = 0; ce_id < CE_COUNT; ce_id++) {
		ce_state  = &ce->ce_states[ce_id];
		if (ce_state->attr_flags & CE_ATTR_POLL)
			continue;

		ctrl_addr = FUNC0(ar, ce_id);

		FUNC1(ar, ctrl_addr);
		FUNC2(ar, ctrl_addr);
		FUNC4(ar, ctrl_addr);
	}

	return 0;
}
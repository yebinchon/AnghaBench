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
typedef  int /*<<< orphan*/  u32 ;
struct ath10k_hw_ce_host_wm_regs {int /*<<< orphan*/  wm_mask; int /*<<< orphan*/  cc_mask; } ;
struct ath10k_ce_pipe {int /*<<< orphan*/  (* send_cb ) (struct ath10k_ce_pipe*) ;int /*<<< orphan*/  (* recv_cb ) (struct ath10k_ce_pipe*) ;int /*<<< orphan*/  ctrl_addr; } ;
struct ath10k_ce {int /*<<< orphan*/  ce_lock; struct ath10k_ce_pipe* ce_states; } ;
struct ath10k {TYPE_1__* hw_ce_regs; } ;
struct TYPE_2__ {struct ath10k_hw_ce_host_wm_regs* wm_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath10k_ce* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k_ce_pipe*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k_ce_pipe*) ; 

void FUNC6(struct ath10k *ar, unsigned int ce_id)
{
	struct ath10k_ce *ce = FUNC1(ar);
	struct ath10k_ce_pipe *ce_state = &ce->ce_states[ce_id];
	struct ath10k_hw_ce_host_wm_regs *wm_regs = ar->hw_ce_regs->wm_regs;
	u32 ctrl_addr = ce_state->ctrl_addr;

	FUNC2(&ce->ce_lock);

	/* Clear the copy-complete interrupts that will be handled here. */
	FUNC0(ar, ctrl_addr,
					  wm_regs->cc_mask);

	FUNC3(&ce->ce_lock);

	if (ce_state->recv_cb)
		ce_state->recv_cb(ce_state);

	if (ce_state->send_cb)
		ce_state->send_cb(ce_state);

	FUNC2(&ce->ce_lock);

	/*
	 * Misc CE interrupts are not being handled, but still need
	 * to be cleared.
	 */
	FUNC0(ar, ctrl_addr, wm_regs->wm_mask);

	FUNC3(&ce->ce_lock);
}
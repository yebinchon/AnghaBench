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
struct ath10k_ce_pipe {int attr_flags; scalar_t__ recv_cb; scalar_t__ send_cb; struct ath10k* ar; int /*<<< orphan*/  ctrl_addr; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int CE_ATTR_DIS_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ath10k_ce_pipe *ce_state)
{
	u32 ctrl_addr = ce_state->ctrl_addr;
	struct ath10k *ar = ce_state->ar;
	bool disable_copy_compl_intr = ce_state->attr_flags & CE_ATTR_DIS_INTR;

	if ((!disable_copy_compl_intr) &&
	    (ce_state->send_cb || ce_state->recv_cb))
		FUNC0(ar, ctrl_addr);
	else
		FUNC1(ar, ctrl_addr);

	FUNC2(ar, ctrl_addr);
}
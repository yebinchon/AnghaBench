#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iwl_trans_pcie {int /*<<< orphan*/  reg_lock; scalar_t__ cmd_hold_nic_awake; } ;
struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {TYPE_1__* csr; } ;
struct TYPE_3__ {int /*<<< orphan*/  flag_mac_access_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct iwl_trans *trans,
					      unsigned long *flags)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);

	FUNC4(&trans_pcie->reg_lock);

	/*
	 * Fool sparse by faking we acquiring the lock - sparse will
	 * track nic_access anyway.
	 */
	FUNC2(&trans_pcie->reg_lock);

	if (trans_pcie->cmd_hold_nic_awake)
		goto out;

	FUNC3(trans, CSR_GP_CNTRL,
				   FUNC0(trans->trans_cfg->csr->flag_mac_access_req));
	/*
	 * Above we read the CSR_GP_CNTRL register, which will flush
	 * any previous writes, but we need the write that clears the
	 * MAC_ACCESS_REQ bit to be performed before any other writes
	 * scheduled on different CPUs (after we drop reg_lock).
	 */
out:
	FUNC5(&trans_pcie->reg_lock, *flags);
}
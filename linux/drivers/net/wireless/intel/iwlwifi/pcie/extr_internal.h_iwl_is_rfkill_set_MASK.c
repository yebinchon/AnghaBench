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
struct iwl_trans_pcie {int debug_rfkill; int /*<<< orphan*/  mutex; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW ; 
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int FUNC1 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC3(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);

	FUNC2(&trans_pcie->mutex);

	if (trans_pcie->debug_rfkill == 1)
		return true;

	return !(FUNC1(trans, CSR_GP_CNTRL) &
		CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW);
}
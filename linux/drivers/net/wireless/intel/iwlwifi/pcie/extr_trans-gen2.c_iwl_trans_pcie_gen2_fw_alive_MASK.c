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
struct iwl_trans_pcie {int /*<<< orphan*/  mutex; int /*<<< orphan*/  queue_used; int /*<<< orphan*/  queue_stopped; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct iwl_trans *trans, u32 scd_addr)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);

	FUNC4(trans);

	/* make sure all queue are not stopped/used */
	FUNC5(trans_pcie->queue_stopped, 0, sizeof(trans_pcie->queue_stopped));
	FUNC5(trans_pcie->queue_used, 0, sizeof(trans_pcie->queue_used));

	/* now that we got alive we can free the fw image & the context info.
	 * paging memory cannot be freed included since FW will still use it
	 */
	FUNC3(trans);

	/*
	 * Re-enable all the interrupts, including the RF-Kill one, now that
	 * the firmware is alive.
	 */
	FUNC1(trans);
	FUNC6(&trans_pcie->mutex);
	FUNC2(trans);
	FUNC7(&trans_pcie->mutex);
}
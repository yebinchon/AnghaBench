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
struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  trans; } ;
struct iwl_device_cmd {int dummy; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct iwl_op_mode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct iwl_op_mode *op_mode,
			     const struct iwl_device_cmd *cmd)
{
	struct iwl_mvm *mvm = FUNC0(op_mode);

	/*
	 * For now, we only set the CMD_WANT_ASYNC_CALLBACK for ADD_STA
	 * commands that need to block the Tx queues.
	 */
	FUNC1(mvm->trans, false);
}
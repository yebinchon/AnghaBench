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
struct iwl_mvm {int dummy; } ;
struct iwl_lq_cmd {scalar_t__ sta_id; } ;
struct iwl_host_cmd {int /*<<< orphan*/  data; int /*<<< orphan*/  flags; int /*<<< orphan*/  len; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 int EINVAL ; 
 scalar_t__ IWL_MVM_INVALID_STA ; 
 int /*<<< orphan*/  LQ_CMD ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct iwl_mvm*) ; 
 int FUNC2 (struct iwl_mvm*,struct iwl_host_cmd*) ; 

int FUNC3(struct iwl_mvm *mvm, struct iwl_lq_cmd *lq)
{
	struct iwl_host_cmd cmd = {
		.id = LQ_CMD,
		.len = sizeof(struct iwl_lq_cmd), 
		.flags = CMD_ASYNC,
		.data = lq, 
	};

	if (FUNC0(lq->sta_id == IWL_MVM_INVALID_STA ||
		    FUNC1(mvm)))
		return -EINVAL;

	return FUNC2(mvm, &cmd);
}
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
typedef  int /*<<< orphan*/  u16 ;
struct iwl_scd_txq_cfg_cmd {int scd_queue; int window; int sta_id; int tx_fifo; int aggregate; int tid; int /*<<< orphan*/  ssn; int /*<<< orphan*/  action; } ;
struct iwl_mvm {TYPE_1__* queue_info; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {scalar_t__ tid_bitmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int IWL_MVM_DQA_BSS_CLIENT_QUEUE ; 
 int IWL_MVM_DQA_MIN_DATA_QUEUE ; 
 int /*<<< orphan*/  SCD_CFG_ENABLE_QUEUE ; 
 int /*<<< orphan*/  SCD_QUEUE_CFG ; 
 scalar_t__ FUNC1 (int,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*) ; 
 int FUNC6 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_scd_txq_cfg_cmd*) ; 

int FUNC7(struct iwl_mvm *mvm, int queue, int fifo, int sta_id,
			 int tid, int frame_limit, u16 ssn)
{
	struct iwl_scd_txq_cfg_cmd cmd = {
		.scd_queue = queue,
		.action = SCD_CFG_ENABLE_QUEUE,
		.window = frame_limit,
		.sta_id = sta_id,
		.ssn = FUNC4(ssn),
		.tx_fifo = fifo,
		.aggregate = (queue >= IWL_MVM_DQA_MIN_DATA_QUEUE ||
			      queue == IWL_MVM_DQA_BSS_CLIENT_QUEUE),
		.tid = tid,
	};
	int ret;

	if (FUNC2(FUNC5(mvm)))
		return -EINVAL;

	if (FUNC1(mvm->queue_info[queue].tid_bitmap == 0,
		 "Trying to reconfig unallocated queue %d\n", queue))
		return -ENXIO;

	FUNC0(mvm, "Reconfig SCD for TXQ #%d\n", queue);

	ret = FUNC6(mvm, SCD_QUEUE_CFG, 0, sizeof(cmd), &cmd);
	FUNC3(ret, "Failed to re-configure queue %d on FIFO %d, ret=%d\n",
		  queue, fifo, ret);

	return ret;
}
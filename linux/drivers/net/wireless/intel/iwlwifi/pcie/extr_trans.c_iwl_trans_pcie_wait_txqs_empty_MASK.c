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
typedef  int u32 ;
struct iwl_trans_pcie {int cmd_queue; int /*<<< orphan*/  queue_used; } ;
struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int num_of_queues; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int FUNC2 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct iwl_trans *trans, u32 txq_bm)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	int cnt;
	int ret = 0;

	/* waiting for all the tx frames complete might take a while */
	for (cnt = 0;
	     cnt < trans->trans_cfg->base_params->num_of_queues;
	     cnt++) {

		if (cnt == trans_pcie->cmd_queue)
			continue;
		if (!FUNC3(cnt, trans_pcie->queue_used))
			continue;
		if (!(FUNC0(cnt) & txq_bm))
			continue;

		ret = FUNC2(trans, cnt);
		if (ret)
			break;
	}

	return ret;
}
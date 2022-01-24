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
struct iwl_trans_pcie {int shared_vec_mask; TYPE_2__* trans; int /*<<< orphan*/ * affinity_mask; TYPE_1__* msix_entries; } ;
struct iwl_trans {int dummy; } ;
struct TYPE_4__ {int num_rx_queues; } ;
struct TYPE_3__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int) ; 
 int IWL_SHARED_IRQ_FIRST_RSS ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct iwl_trans *trans)
{
	int iter_rx_q, i, ret, cpu, offset;
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);

	i = trans_pcie->shared_vec_mask & IWL_SHARED_IRQ_FIRST_RSS ? 0 : 1;
	iter_rx_q = trans_pcie->trans->num_rx_queues - 1 + i;
	offset = 1 + i;
	for (; i < iter_rx_q ; i++) {
		/*
		 * Get the cpu prior to the place to search
		 * (i.e. return will be > i - 1).
		 */
		cpu = FUNC2(i - offset, cpu_online_mask);
		FUNC3(cpu, &trans_pcie->affinity_mask[i]);
		ret = FUNC4(trans_pcie->msix_entries[i].vector,
					    &trans_pcie->affinity_mask[i]);
		if (ret)
			FUNC0(trans_pcie->trans,
				"Failed to set affinity mask for IRQ %d\n",
				i);
	}
}
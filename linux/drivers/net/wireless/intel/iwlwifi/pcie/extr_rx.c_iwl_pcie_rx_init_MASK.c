#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iwl_trans_pcie {TYPE_2__* rxq; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {scalar_t__ mq_rx_supported; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	int ret = FUNC1(trans);

	if (ret)
		return ret;

	if (trans->trans_cfg->mq_rx_supported)
		FUNC3(trans);
	else
		FUNC2(trans, trans_pcie->rxq);

	FUNC5(trans, trans_pcie->rxq);

	FUNC6(&trans_pcie->rxq->lock);
	FUNC4(trans, trans_pcie->rxq);
	FUNC7(&trans_pcie->rxq->lock);

	return 0;
}
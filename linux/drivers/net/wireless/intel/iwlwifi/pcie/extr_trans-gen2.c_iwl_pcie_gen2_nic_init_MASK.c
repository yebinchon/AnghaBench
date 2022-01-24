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
struct iwl_trans_pcie {int /*<<< orphan*/  cmd_queue; int /*<<< orphan*/  irq_lock; } ;
struct iwl_trans {int /*<<< orphan*/  op_mode; TYPE_1__* cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  min_txq_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_MAC_SHADOW_REG_CTRL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IWL_CMD_QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 scalar_t__ FUNC4 (struct iwl_trans*) ; 
 scalar_t__ FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC10(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	int queue_size = FUNC7(u32, IWL_CMD_QUEUE_SIZE,
			       trans->cfg->min_txq_size);

	/* TODO: most of the logic can be removed in A0 - but not in Z0 */
	FUNC8(&trans_pcie->irq_lock);
	FUNC3(trans);
	FUNC9(&trans_pcie->irq_lock);

	FUNC2(trans->op_mode);

	/* Allocate the RX queue, or reset if it is already allocated */
	if (FUNC4(trans))
		return -ENOMEM;

	/* Allocate or reset and init all Tx and Command queues */
	if (FUNC5(trans, trans_pcie->cmd_queue, queue_size))
		return -ENOMEM;

	/* enable shadow regs in HW */
	FUNC6(trans, CSR_MAC_SHADOW_REG_CTRL, 0x800FFFFF);
	FUNC0(trans, "Enabling shadow registers in device\n");

	return 0;
}
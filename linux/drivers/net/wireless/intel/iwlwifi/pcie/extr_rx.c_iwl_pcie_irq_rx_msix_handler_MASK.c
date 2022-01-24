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
struct msix_entry {int /*<<< orphan*/  entry; } ;
struct iwl_trans_pcie {struct iwl_trans* trans; } ;
struct iwl_trans {int /*<<< orphan*/  sync_cmd_lockdep_map; int /*<<< orphan*/  num_rx_queues; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,struct msix_entry*) ; 
 struct iwl_trans_pcie* FUNC2 (struct msix_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct msix_entry*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct msix_entry *entry = dev_id;
	struct iwl_trans_pcie *trans_pcie = FUNC2(entry);
	struct iwl_trans *trans = trans_pcie->trans;

	FUNC8(trans->dev, entry, false, 0, 0);

	if (FUNC0(entry->entry >= trans->num_rx_queues))
		return IRQ_NONE;

	FUNC6(&trans->sync_cmd_lockdep_map);

	FUNC4();
	FUNC3(trans, entry->entry);
	FUNC5();

	FUNC1(trans, entry);

	FUNC7(&trans->sync_cmd_lockdep_map);

	return IRQ_HANDLED;
}
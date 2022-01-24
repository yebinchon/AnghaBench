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
struct ena_adapter {int msix_vecs; int /*<<< orphan*/  flags; int /*<<< orphan*/  netdev; scalar_t__ num_queues; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ ENA_ADMIN_MSIX_VEC ; 
 int /*<<< orphan*/  ENA_FLAG_MSIX_ENABLED ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ENA_MIN_MSIX_VEC ; 
 int ENOSPC ; 
 int EPERM ; 
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 scalar_t__ FUNC1 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct ena_adapter *adapter, int num_queues)
{
	int msix_vecs, irq_cnt;

	if (FUNC8(ENA_FLAG_MSIX_ENABLED, &adapter->flags)) {
		FUNC3(adapter, probe, adapter->netdev,
			  "Error, MSI-X is already enabled\n");
		return -EPERM;
	}

	/* Reserved the max msix vectors we might need */
	msix_vecs = FUNC0(num_queues);
	FUNC2(adapter, probe, adapter->netdev,
		  "trying to enable MSI-X, vectors %d\n", msix_vecs);

	irq_cnt = FUNC6(adapter->pdev, ENA_MIN_MSIX_VEC,
					msix_vecs, PCI_IRQ_MSIX);

	if (irq_cnt < 0) {
		FUNC3(adapter, probe, adapter->netdev,
			  "Failed to enable MSI-X. irq_cnt %d\n", irq_cnt);
		return -ENOSPC;
	}

	if (irq_cnt != msix_vecs) {
		FUNC4(adapter, probe, adapter->netdev,
			     "enable only %d MSI-X (out of %d), reduce the number of queues\n",
			     irq_cnt, msix_vecs);
		adapter->num_queues = irq_cnt - ENA_ADMIN_MSIX_VEC;
	}

	if (FUNC1(adapter))
		FUNC5(adapter, probe, adapter->netdev,
			   "Failed to map IRQs to CPUs\n");

	adapter->msix_vecs = irq_cnt;
	FUNC7(ENA_FLAG_MSIX_ENABLED, &adapter->flags);

	return 0;
}
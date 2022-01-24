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
struct net_device {char* name; } ;
struct ena_adapter {int num_queues; TYPE_1__* irq_tbl; int /*<<< orphan*/  pdev; int /*<<< orphan*/ * ena_napi; struct net_device* netdev; } ;
struct TYPE_2__ {int cpu; int /*<<< orphan*/  affinity_hint_mask; int /*<<< orphan*/  vector; int /*<<< orphan*/ * data; int /*<<< orphan*/  handler; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ENA_IRQNAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ena_intr_msix_io ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static void FUNC5(struct ena_adapter *adapter)
{
	struct net_device *netdev;
	int irq_idx, i, cpu;

	netdev = adapter->netdev;

	for (i = 0; i < adapter->num_queues; i++) {
		irq_idx = FUNC0(i);
		cpu = i % FUNC2();

		FUNC4(adapter->irq_tbl[irq_idx].name, ENA_IRQNAME_SIZE,
			 "%s-Tx-Rx-%d", netdev->name, i);
		adapter->irq_tbl[irq_idx].handler = ena_intr_msix_io;
		adapter->irq_tbl[irq_idx].data = &adapter->ena_napi[i];
		adapter->irq_tbl[irq_idx].vector =
			FUNC3(adapter->pdev, irq_idx);
		adapter->irq_tbl[irq_idx].cpu = cpu;

		FUNC1(cpu,
				&adapter->irq_tbl[irq_idx].affinity_hint_mask);
	}
}
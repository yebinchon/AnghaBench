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
typedef  int /*<<< orphan*/  u32 ;
struct ena_adapter {TYPE_1__* irq_tbl; int /*<<< orphan*/  pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  affinity_hint_mask; int /*<<< orphan*/  cpu; int /*<<< orphan*/  vector; struct ena_adapter* data; int /*<<< orphan*/  handler; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_IRQNAME_SIZE ; 
 size_t ENA_MGMNT_IRQ_IDX ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ena_intr_msix_mgmnt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC5(struct ena_adapter *adapter)
{
	u32 cpu;

	FUNC4(adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].name,
		 ENA_IRQNAME_SIZE, "ena-mgmnt@pci:%s",
		 FUNC3(adapter->pdev));
	adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].handler =
		ena_intr_msix_mgmnt;
	adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].data = adapter;
	adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].vector =
		FUNC2(adapter->pdev, ENA_MGMNT_IRQ_IDX);
	cpu = FUNC0(cpu_online_mask);
	adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].cpu = cpu;
	FUNC1(cpu,
			&adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].affinity_hint_mask);
}
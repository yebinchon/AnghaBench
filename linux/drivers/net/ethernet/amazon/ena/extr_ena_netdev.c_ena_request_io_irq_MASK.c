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
struct TYPE_2__ {int /*<<< orphan*/ * bits; } ;
struct ena_irq {int /*<<< orphan*/  data; int /*<<< orphan*/  vector; TYPE_1__ affinity_hint_mask; int /*<<< orphan*/  name; int /*<<< orphan*/  handler; } ;
struct ena_adapter {int msix_vecs; struct ena_irq* irq_tbl; int /*<<< orphan*/  netdev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ENA_FLAG_MSIX_ENABLED ; 
 int ENA_IO_IRQ_FIRST_IDX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ena_adapter *adapter)
{
	unsigned long flags = 0;
	struct ena_irq *irq;
	int rc = 0, i, k;

	if (!FUNC5(ENA_FLAG_MSIX_ENABLED, &adapter->flags)) {
		FUNC3(adapter, ifup, adapter->netdev,
			  "Failed to request I/O IRQ: MSI-X is not enabled\n");
		return -EINVAL;
	}

	for (i = ENA_IO_IRQ_FIRST_IDX; i < adapter->msix_vecs; i++) {
		irq = &adapter->irq_tbl[i];
		rc = FUNC4(irq->vector, irq->handler, flags, irq->name,
				 irq->data);
		if (rc) {
			FUNC3(adapter, ifup, adapter->netdev,
				  "Failed to request I/O IRQ. index %d rc %d\n",
				   i, rc);
			goto err;
		}

		FUNC2(adapter, ifup, adapter->netdev,
			  "set affinity hint of irq. index %d to 0x%lx (irq vector: %d)\n",
			  i, irq->affinity_hint_mask.bits[0], irq->vector);

		FUNC1(irq->vector, &irq->affinity_hint_mask);
	}

	return rc;

err:
	for (k = ENA_IO_IRQ_FIRST_IDX; k < i; k++) {
		irq = &adapter->irq_tbl[k];
		FUNC0(irq->vector, irq->data);
	}

	return rc;
}
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
struct msix_entry {int /*<<< orphan*/  vector; } ;
struct TYPE_4__ {int /*<<< orphan*/  count; } ;
struct TYPE_3__ {int /*<<< orphan*/  count; } ;
struct fm10k_q_vector {int /*<<< orphan*/  itr; TYPE_2__ rx; TYPE_1__ tx; } ;
struct fm10k_intfc {int num_q_vectors; struct fm10k_q_vector** q_vector; struct msix_entry* msix_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_ITR_MASK_SET ; 
 int NON_Q_VECTORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fm10k_q_vector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct fm10k_intfc *interface)
{
	int vector = interface->num_q_vectors;
	struct msix_entry *entry;

	entry = &interface->msix_entries[NON_Q_VECTORS + vector];

	while (vector) {
		struct fm10k_q_vector *q_vector;

		vector--;
		entry--;
		q_vector = interface->q_vector[vector];

		if (!q_vector->tx.count && !q_vector->rx.count)
			continue;

		/* clear the affinity_mask in the IRQ descriptor */
		FUNC1(entry->vector, NULL);

		/* disable interrupts */
		FUNC2(FM10K_ITR_MASK_SET, q_vector->itr);

		FUNC0(entry->vector, q_vector);
	}
}
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
struct iavf_adapter {int num_msix_vectors; int /*<<< orphan*/ * q_vectors; TYPE_1__* msix_entries; } ;
struct TYPE_2__ {int vector; } ;

/* Variables and functions */
 int NONQ_VECS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct iavf_adapter *adapter)
{
	int vector, irq_num, q_vectors;

	if (!adapter->msix_entries)
		return;

	q_vectors = adapter->num_msix_vectors - NONQ_VECS;

	for (vector = 0; vector < q_vectors; vector++) {
		irq_num = adapter->msix_entries[vector + NONQ_VECS].vector;
		FUNC2(irq_num, NULL);
		FUNC1(irq_num, NULL);
		FUNC0(irq_num, &adapter->q_vectors[vector]);
	}
}
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
struct ena_ring {int cpu; int /*<<< orphan*/  ena_com_io_cq; } ;

/* Variables and functions */
 int NUMA_NO_NODE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct ena_ring *tx_ring,
					     struct ena_ring *rx_ring)
{
	int cpu = FUNC2();
	int numa_node;

	/* Check only one ring since the 2 rings are running on the same cpu */
	if (FUNC3(tx_ring->cpu == cpu))
		goto out;

	numa_node = FUNC0(cpu);
	FUNC4();

	if (numa_node != NUMA_NO_NODE) {
		FUNC1(tx_ring->ena_com_io_cq, numa_node);
		FUNC1(rx_ring->ena_com_io_cq, numa_node);
	}

	tx_ring->cpu = cpu;
	rx_ring->cpu = cpu;

	return;
out:
	FUNC4();
}
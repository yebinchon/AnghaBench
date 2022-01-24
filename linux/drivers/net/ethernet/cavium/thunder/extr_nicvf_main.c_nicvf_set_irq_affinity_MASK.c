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
struct nicvf {int num_vec; int /*<<< orphan*/ * affinity_mask; int /*<<< orphan*/  pdev; int /*<<< orphan*/  node; int /*<<< orphan*/ * irq_allocated; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NICVF_INTR_ID_SQ ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nicvf*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nicvf *nic)
{
	int vec, cpu;

	for (vec = 0; vec < nic->num_vec; vec++) {
		if (!nic->irq_allocated[vec])
			continue;

		if (!FUNC5(&nic->affinity_mask[vec], GFP_KERNEL))
			return;
		 /* CQ interrupts */
		if (vec < NICVF_INTR_ID_SQ)
			/* Leave CPU0 for RBDR and other interrupts */
			cpu = FUNC3(nic, vec) + 1;
		else
			cpu = 0;

		FUNC1(FUNC0(cpu, nic->node),
				nic->affinity_mask[vec]);
		FUNC2(FUNC4(nic->pdev, vec),
				      nic->affinity_mask[vec]);
	}
}
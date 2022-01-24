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
struct nicpf {int num_vec; int* irq_allocated; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nicpf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct nicpf *nic)
{
	int irq;

	for (irq = 0; irq < nic->num_vec; irq++) {
		if (nic->irq_allocated[irq])
			FUNC0(FUNC1(nic->pdev, irq), nic);
		nic->irq_allocated[irq] = false;
	}
}
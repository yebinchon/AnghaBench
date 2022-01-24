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
struct hnae_ring {int dummy; } ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct hnae_ring*) ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(int q_num, int ring_idx,
				      struct hnae_ring *ring, cpumask_t *mask)
{
	int cpu;

	/* Diffrent irq banlance between 16core and 32core.
	 * The cpu mask set by ring index according to the ring flag
	 * which indicate the ring is tx or rx.
	 */
	if (q_num == FUNC3()) {
		if (FUNC2(ring))
			cpu = ring_idx;
		else
			cpu = ring_idx - q_num;
	} else {
		if (FUNC2(ring))
			cpu = ring_idx * 2;
		else
			cpu = (ring_idx - q_num) * 2 + 1;
	}

	FUNC0(mask);
	FUNC1(cpu, mask);

	return cpu;
}
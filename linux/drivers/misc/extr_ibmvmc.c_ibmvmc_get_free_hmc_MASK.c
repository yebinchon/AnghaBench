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
struct ibmvmc_hmc {scalar_t__ state; unsigned long index; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {unsigned long max_hmc_index; } ;

/* Variables and functions */
 struct ibmvmc_hmc* hmcs ; 
 scalar_t__ ibmhmc_state_free ; 
 scalar_t__ ibmhmc_state_initial ; 
 TYPE_1__ ibmvmc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct ibmvmc_hmc *FUNC2(void)
{
	unsigned long i;
	unsigned long flags;

	/*
	 * Find an available HMC connection.
	 */
	for (i = 0; i <= ibmvmc.max_hmc_index; i++) {
		FUNC0(&hmcs[i].lock, flags);
		if (hmcs[i].state == ibmhmc_state_free) {
			hmcs[i].index = i;
			hmcs[i].state = ibmhmc_state_initial;
			FUNC1(&hmcs[i].lock, flags);
			return &hmcs[i];
		}
		FUNC1(&hmcs[i].lock, flags);
	}

	return NULL;
}
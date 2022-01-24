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
struct mmc_host {int /*<<< orphan*/  f_min; int /*<<< orphan*/  f_max; } ;
struct cvm_mmc_slot {unsigned int clock; struct mmc_host* mmc; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cvm_mmc_slot *slot, unsigned int clock)
{
	struct mmc_host *mmc = slot->mmc;

	clock = FUNC1(clock, mmc->f_max);
	clock = FUNC0(clock, mmc->f_min);
	slot->clock = clock;
}
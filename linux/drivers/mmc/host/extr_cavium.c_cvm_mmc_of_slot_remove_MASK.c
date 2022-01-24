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
struct cvm_mmc_slot {size_t bus_id; int /*<<< orphan*/  mmc; TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** slot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct cvm_mmc_slot *slot)
{
	FUNC1(slot->mmc);
	slot->host->slot[slot->bus_id] = NULL;
	FUNC0(slot->mmc);
	return 0;
}
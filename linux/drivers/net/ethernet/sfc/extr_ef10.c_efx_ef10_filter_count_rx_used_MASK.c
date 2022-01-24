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
typedef  scalar_t__ u32 ;
struct efx_nic {int /*<<< orphan*/  filter_sem; struct efx_ef10_filter_table* filter_state; } ;
struct efx_ef10_filter_table {int /*<<< orphan*/  lock; TYPE_1__* entry; } ;
typedef  scalar_t__ s32 ;
typedef  enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;
struct TYPE_4__ {int priority; } ;
struct TYPE_3__ {scalar_t__ spec; } ;

/* Variables and functions */
 unsigned int HUNT_FILTER_TBL_ROWS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct efx_ef10_filter_table*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC3(struct efx_nic *efx,
					 enum efx_filter_priority priority)
{
	struct efx_ef10_filter_table *table;
	unsigned int filter_idx;
	s32 count = 0;

	FUNC0(&efx->filter_sem);
	table = efx->filter_state;
	FUNC0(&table->lock);
	for (filter_idx = 0; filter_idx < HUNT_FILTER_TBL_ROWS; filter_idx++) {
		if (table->entry[filter_idx].spec &&
		    FUNC1(table, filter_idx)->priority ==
		    priority)
			++count;
	}
	FUNC2(&table->lock);
	FUNC2(&efx->filter_sem);
	return count;
}
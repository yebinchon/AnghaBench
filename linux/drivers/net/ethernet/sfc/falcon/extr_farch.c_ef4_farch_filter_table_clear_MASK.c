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
struct ef4_nic {int /*<<< orphan*/  filter_lock; struct ef4_farch_filter_state* filter_state; } ;
struct ef4_farch_filter_table {unsigned int size; TYPE_1__* spec; } ;
struct ef4_farch_filter_state {struct ef4_farch_filter_table* table; } ;
typedef  enum ef4_filter_priority { ____Placeholder_ef4_filter_priority } ef4_filter_priority ;
typedef  enum ef4_farch_filter_table_id { ____Placeholder_ef4_farch_filter_table_id } ef4_farch_filter_table_id ;
struct TYPE_2__ {scalar_t__ priority; } ;

/* Variables and functions */
 scalar_t__ EF4_FILTER_PRI_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*,struct ef4_farch_filter_table*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct ef4_nic *efx,
			     enum ef4_farch_filter_table_id table_id,
			     enum ef4_filter_priority priority)
{
	struct ef4_farch_filter_state *state = efx->filter_state;
	struct ef4_farch_filter_table *table = &state->table[table_id];
	unsigned int filter_idx;

	FUNC1(&efx->filter_lock);
	for (filter_idx = 0; filter_idx < table->size; ++filter_idx) {
		if (table->spec[filter_idx].priority != EF4_FILTER_PRI_AUTO)
			FUNC0(efx, table,
						filter_idx, priority);
	}
	FUNC2(&efx->filter_lock);
}
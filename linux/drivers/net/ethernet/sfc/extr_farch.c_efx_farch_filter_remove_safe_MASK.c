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
typedef  int /*<<< orphan*/  u32 ;
struct efx_nic {struct efx_farch_filter_state* filter_state; } ;
struct efx_farch_filter_table {unsigned int size; struct efx_farch_filter_spec* spec; } ;
struct efx_farch_filter_state {int /*<<< orphan*/  lock; struct efx_farch_filter_table* table; } ;
struct efx_farch_filter_spec {int dummy; } ;
typedef  enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;
typedef  enum efx_farch_filter_table_id { ____Placeholder_efx_farch_filter_table_id } efx_farch_filter_table_id ;

/* Variables and functions */
 unsigned int EFX_FARCH_FILTER_TABLE_COUNT ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct efx_nic*,struct efx_farch_filter_table*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct efx_nic *efx,
				 enum efx_filter_priority priority,
				 u32 filter_id)
{
	struct efx_farch_filter_state *state = efx->filter_state;
	enum efx_farch_filter_table_id table_id;
	struct efx_farch_filter_table *table;
	unsigned int filter_idx;
	struct efx_farch_filter_spec *spec;
	int rc;

	table_id = FUNC2(filter_id);
	if ((unsigned int)table_id >= EFX_FARCH_FILTER_TABLE_COUNT)
		return -ENOENT;
	table = &state->table[table_id];

	filter_idx = FUNC1(filter_id);
	if (filter_idx >= table->size)
		return -ENOENT;
	FUNC0(&state->lock);
	spec = &table->spec[filter_idx];

	rc = FUNC3(efx, table, filter_idx, priority);
	FUNC4(&state->lock);

	return rc;
}
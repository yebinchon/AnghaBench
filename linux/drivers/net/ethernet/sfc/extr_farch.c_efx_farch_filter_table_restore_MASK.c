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
struct efx_nic {struct efx_farch_filter_state* filter_state; } ;
struct efx_farch_filter_table {unsigned int step; unsigned int size; scalar_t__ offset; int /*<<< orphan*/ * spec; int /*<<< orphan*/  used_bitmap; } ;
struct efx_farch_filter_state {int /*<<< orphan*/  lock; struct efx_farch_filter_table* table; } ;
typedef  enum efx_farch_filter_table_id { ____Placeholder_efx_farch_filter_table_id } efx_farch_filter_table_id ;
typedef  int /*<<< orphan*/  efx_oword_t ;

/* Variables and functions */
 int EFX_FARCH_FILTER_TABLE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct efx_nic *efx)
{
	struct efx_farch_filter_state *state = efx->filter_state;
	enum efx_farch_filter_table_id table_id;
	struct efx_farch_filter_table *table;
	efx_oword_t filter;
	unsigned int filter_idx;

	FUNC0(&state->lock);

	for (table_id = 0; table_id < EFX_FARCH_FILTER_TABLE_COUNT; table_id++) {
		table = &state->table[table_id];

		/* Check whether this is a regular register table */
		if (table->step == 0)
			continue;

		for (filter_idx = 0; filter_idx < table->size; filter_idx++) {
			if (!FUNC5(filter_idx, table->used_bitmap))
				continue;
			FUNC1(&filter, &table->spec[filter_idx]);
			FUNC4(efx, &filter,
				   table->offset + table->step * filter_idx);
		}
	}

	FUNC2(efx);
	FUNC3(efx);

	FUNC6(&state->lock);
}
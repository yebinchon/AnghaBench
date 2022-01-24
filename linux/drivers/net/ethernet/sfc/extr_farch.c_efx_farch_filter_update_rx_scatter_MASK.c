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
struct efx_nic {scalar_t__ n_rx_channels; scalar_t__ rx_scatter; struct efx_farch_filter_state* filter_state; } ;
struct efx_farch_filter_table {unsigned int size; unsigned int step; scalar_t__ offset; TYPE_1__* spec; int /*<<< orphan*/  used_bitmap; } ;
struct efx_farch_filter_state {int /*<<< orphan*/  lock; struct efx_farch_filter_table* table; } ;
typedef  enum efx_farch_filter_table_id { ____Placeholder_efx_farch_filter_table_id } efx_farch_filter_table_id ;
typedef  int /*<<< orphan*/  efx_oword_t ;
struct TYPE_2__ {scalar_t__ dmaq_id; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EFX_FARCH_FILTER_TABLE_RX_DEF ; 
 int EFX_FARCH_FILTER_TABLE_RX_IP ; 
 int /*<<< orphan*/  EFX_FILTER_FLAG_RX_SCATTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct efx_nic *efx)
{
	struct efx_farch_filter_state *state = efx->filter_state;
	enum efx_farch_filter_table_id table_id;
	struct efx_farch_filter_table *table;
	efx_oword_t filter;
	unsigned int filter_idx;

	FUNC0(&state->lock);

	for (table_id = EFX_FARCH_FILTER_TABLE_RX_IP;
	     table_id <= EFX_FARCH_FILTER_TABLE_RX_DEF;
	     table_id++) {
		table = &state->table[table_id];

		for (filter_idx = 0; filter_idx < table->size; filter_idx++) {
			if (!FUNC4(filter_idx, table->used_bitmap) ||
			    table->spec[filter_idx].dmaq_id >=
			    efx->n_rx_channels)
				continue;

			if (efx->rx_scatter)
				table->spec[filter_idx].flags |=
					EFX_FILTER_FLAG_RX_SCATTER;
			else
				table->spec[filter_idx].flags &=
					~EFX_FILTER_FLAG_RX_SCATTER;

			if (table_id == EFX_FARCH_FILTER_TABLE_RX_DEF)
				/* Pushed by efx_farch_filter_push_rx_config() */
				continue;

			FUNC1(&filter, &table->spec[filter_idx]);
			FUNC3(efx, &filter,
				   table->offset + table->step * filter_idx);
		}
	}

	FUNC2(efx);

	FUNC5(&state->lock);
}
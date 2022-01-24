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
typedef  int /*<<< orphan*/  u32 ;
struct efx_nic {struct efx_farch_filter_state* filter_state; } ;
struct efx_farch_filter_table {unsigned int size; TYPE_1__* spec; int /*<<< orphan*/  used_bitmap; } ;
struct efx_farch_filter_state {int /*<<< orphan*/  lock; struct efx_farch_filter_table* table; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;
typedef  enum efx_farch_filter_table_id { ____Placeholder_efx_farch_filter_table_id } efx_farch_filter_table_id ;
struct TYPE_2__ {int priority; } ;

/* Variables and functions */
 int EFX_FARCH_FILTER_TABLE_RX_DEF ; 
 int EFX_FARCH_FILTER_TABLE_RX_IP ; 
 int /*<<< orphan*/  EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

s32 FUNC4(struct efx_nic *efx,
				enum efx_filter_priority priority,
				u32 *buf, u32 size)
{
	struct efx_farch_filter_state *state = efx->filter_state;
	enum efx_farch_filter_table_id table_id;
	struct efx_farch_filter_table *table;
	unsigned int filter_idx;
	s32 count = 0;

	FUNC0(&state->lock);

	for (table_id = EFX_FARCH_FILTER_TABLE_RX_IP;
	     table_id <= EFX_FARCH_FILTER_TABLE_RX_DEF;
	     table_id++) {
		table = &state->table[table_id];
		for (filter_idx = 0; filter_idx < table->size; filter_idx++) {
			if (FUNC2(filter_idx, table->used_bitmap) &&
			    table->spec[filter_idx].priority == priority) {
				if (count == size) {
					count = -EMSGSIZE;
					goto out;
				}
				buf[count++] = FUNC1(
					&table->spec[filter_idx], filter_idx);
			}
		}
	}
out:
	FUNC3(&state->lock);

	return count;
}
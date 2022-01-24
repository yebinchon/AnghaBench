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
struct efx_nic {int /*<<< orphan*/  filter_sem; struct efx_ef10_filter_table* filter_state; } ;
struct efx_filter_spec {int priority; } ;
struct efx_ef10_filter_table {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;

/* Variables and functions */
 int /*<<< orphan*/  EMSGSIZE ; 
 unsigned int HUNT_FILTER_TBL_ROWS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct efx_filter_spec* FUNC1 (struct efx_ef10_filter_table*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_ef10_filter_table*,struct efx_filter_spec*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static s32 FUNC5(struct efx_nic *efx,
				      enum efx_filter_priority priority,
				      u32 *buf, u32 size)
{
	struct efx_ef10_filter_table *table;
	struct efx_filter_spec *spec;
	unsigned int filter_idx;
	s32 count = 0;

	FUNC0(&efx->filter_sem);
	table = efx->filter_state;
	FUNC0(&table->lock);

	for (filter_idx = 0; filter_idx < HUNT_FILTER_TBL_ROWS; filter_idx++) {
		spec = FUNC1(table, filter_idx);
		if (spec && spec->priority == priority) {
			if (count == size) {
				count = -EMSGSIZE;
				break;
			}
			buf[count++] =
				FUNC3(
					FUNC2(table, spec),
					filter_idx);
		}
	}
	FUNC4(&table->lock);
	FUNC4(&efx->filter_sem);
	return count;
}
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
typedef  enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct efx_filter_spec* FUNC1 (struct efx_ef10_filter_table*,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct efx_ef10_filter_table*,struct efx_filter_spec const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct efx_nic *efx,
				    enum efx_filter_priority priority,
				    u32 filter_id, struct efx_filter_spec *spec)
{
	unsigned int filter_idx = FUNC2(filter_id);
	const struct efx_filter_spec *saved_spec;
	struct efx_ef10_filter_table *table;
	int rc;

	FUNC0(&efx->filter_sem);
	table = efx->filter_state;
	FUNC0(&table->lock);
	saved_spec = FUNC1(table, filter_idx);
	if (saved_spec && saved_spec->priority == priority &&
	    FUNC4(table, saved_spec) ==
	    FUNC3(filter_id)) {
		*spec = *saved_spec;
		rc = 0;
	} else {
		rc = -ENOENT;
	}
	FUNC5(&table->lock);
	FUNC5(&efx->filter_sem);
	return rc;
}
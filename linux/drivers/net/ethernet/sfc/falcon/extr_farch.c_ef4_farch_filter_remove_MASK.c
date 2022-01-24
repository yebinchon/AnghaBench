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
struct ef4_nic {int dummy; } ;
struct ef4_farch_filter_table {int /*<<< orphan*/  used_bitmap; struct ef4_farch_filter_spec* spec; } ;
struct ef4_farch_filter_spec {int priority; int flags; } ;
typedef  enum ef4_filter_priority { ____Placeholder_ef4_filter_priority } ef4_filter_priority ;

/* Variables and functions */
 int EF4_FILTER_FLAG_RX_OVER_AUTO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*,struct ef4_farch_filter_spec*) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,struct ef4_farch_filter_table*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ef4_nic *efx,
				   struct ef4_farch_filter_table *table,
				   unsigned int filter_idx,
				   enum ef4_filter_priority priority)
{
	struct ef4_farch_filter_spec *spec = &table->spec[filter_idx];

	if (!FUNC3(filter_idx, table->used_bitmap) ||
	    spec->priority != priority)
		return -ENOENT;

	if (spec->flags & EF4_FILTER_FLAG_RX_OVER_AUTO) {
		FUNC0(efx, spec);
		FUNC1(efx);
	} else {
		FUNC2(efx, table, filter_idx);
	}

	return 0;
}
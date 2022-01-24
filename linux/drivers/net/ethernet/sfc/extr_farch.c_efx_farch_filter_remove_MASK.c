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
struct efx_nic {int dummy; } ;
struct efx_farch_filter_table {int /*<<< orphan*/  used_bitmap; struct efx_farch_filter_spec* spec; } ;
struct efx_farch_filter_spec {int priority; int flags; } ;
typedef  enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;

/* Variables and functions */
 int EFX_FILTER_FLAG_RX_OVER_AUTO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,struct efx_farch_filter_spec*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,struct efx_farch_filter_table*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct efx_nic *efx,
				   struct efx_farch_filter_table *table,
				   unsigned int filter_idx,
				   enum efx_filter_priority priority)
{
	struct efx_farch_filter_spec *spec = &table->spec[filter_idx];

	if (!FUNC3(filter_idx, table->used_bitmap) ||
	    spec->priority != priority)
		return -ENOENT;

	if (spec->flags & EFX_FILTER_FLAG_RX_OVER_AUTO) {
		FUNC0(efx, spec);
		FUNC1(efx);
	} else {
		FUNC2(efx, table, filter_idx);
	}

	return 0;
}
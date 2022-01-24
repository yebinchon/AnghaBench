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
struct ef4_farch_filter_table {scalar_t__ offset; scalar_t__ used; unsigned int step; scalar_t__ id; int /*<<< orphan*/ * search_limit; int /*<<< orphan*/ * spec; int /*<<< orphan*/  used_bitmap; } ;
typedef  int /*<<< orphan*/  ef4_oword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EF4_FARCH_FILTER_TABLE_TX_MAC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct ef4_nic *efx,
				   struct ef4_farch_filter_table *table,
				   unsigned int filter_idx)
{
	static ef4_oword_t filter;

	FUNC1(!FUNC7(filter_idx, table->used_bitmap));
	FUNC0(table->offset == 0); /* can't clear MAC default filters */

	FUNC2(filter_idx, table->used_bitmap);
	--table->used;
	FUNC6(&table->spec[filter_idx], 0, sizeof(table->spec[0]));

	FUNC5(efx, &filter, table->offset + table->step * filter_idx);

	/* If this filter required a greater search depth than
	 * any other, the search limit for its type can now be
	 * decreased.  However, it is hard to determine that
	 * unless the table has become completely empty - in
	 * which case, all its search limits can be set to 0.
	 */
	if (FUNC8(table->used == 0)) {
		FUNC6(table->search_limit, 0, sizeof(table->search_limit));
		if (table->id == EF4_FARCH_FILTER_TABLE_TX_MAC)
			FUNC4(efx);
		else
			FUNC3(efx);
	}
}
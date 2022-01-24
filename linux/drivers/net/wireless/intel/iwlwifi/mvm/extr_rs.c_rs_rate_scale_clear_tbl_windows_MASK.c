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
struct iwl_scale_tbl_info {int /*<<< orphan*/ * tpc_win; int /*<<< orphan*/ * win; } ;
struct iwl_mvm {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int IWL_RATE_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct iwl_mvm *mvm,
					    struct iwl_scale_tbl_info *tbl)
{
	int i;

	FUNC1(mvm, "Clearing up window stats\n");
	for (i = 0; i < IWL_RATE_COUNT; i++)
		FUNC2(&tbl->win[i]);

	for (i = 0; i < FUNC0(tbl->tpc_win); i++)
		FUNC2(&tbl->tpc_win[i]);
}
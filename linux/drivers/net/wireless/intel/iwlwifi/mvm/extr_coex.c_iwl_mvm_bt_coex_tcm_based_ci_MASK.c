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
struct iwl_mvm {unsigned long bt_coex_last_tcm_ts; } ;
struct iwl_bt_iterator_data {scalar_t__ primary_load; scalar_t__ secondary_load; int /*<<< orphan*/  secondary; int /*<<< orphan*/  primary; scalar_t__ primary_ll; } ;

/* Variables and functions */
 scalar_t__ MVM_COEX_TCM_PERIOD ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct iwl_mvm *mvm,
					 struct iwl_bt_iterator_data *data)
{
	unsigned long now = jiffies;

	if (!FUNC1(now, mvm->bt_coex_last_tcm_ts + MVM_COEX_TCM_PERIOD))
		return;

	mvm->bt_coex_last_tcm_ts = now;

	/* We assume here that we don't have more than 2 vifs on 2.4GHz */

	/* if the primary is low latency, it will stay primary */
	if (data->primary_ll)
		return;

	if (data->primary_load >= data->secondary_load)
		return;

	FUNC0(data->primary, data->secondary);
}
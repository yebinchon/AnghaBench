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
typedef  scalar_t__ u32 ;
struct iwl_mvm_time_event_data {scalar_t__ uid; scalar_t__ id; } ;
struct iwl_mvm {int /*<<< orphan*/  time_event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,scalar_t__) ; 
 scalar_t__ TE_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct iwl_mvm_time_event_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct iwl_mvm *mvm,
					struct iwl_mvm_time_event_data *te_data,
					u32 *uid)
{
	u32 id;

	/*
	 * It is possible that by the time we got to this point the time
	 * event was already removed.
	 */
	FUNC2(&mvm->time_event_lock);

	/* Save time event uid before clearing its data */
	*uid = te_data->uid;
	id = te_data->id;

	/*
	 * The clear_data function handles time events that were already removed
	 */
	FUNC1(mvm, te_data);
	FUNC3(&mvm->time_event_lock);

	/*
	 * It is possible that by the time we try to remove it, the time event
	 * has already ended and removed. In such a case there is no need to
	 * send a removal command.
	 */
	if (id == TE_MAX) {
		FUNC0(mvm, "TE 0x%x has already ended\n", *uid);
		return false;
	}

	return true;
}
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
struct iwl_mvm_time_event_data {int dummy; } ;
struct iwl_mvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,struct iwl_mvm_time_event_data*,int /*<<< orphan*/ *) ; 
 struct iwl_mvm_time_event_data* FUNC1 (struct iwl_mvm*) ; 

void FUNC2(struct iwl_mvm *mvm)
{
	struct iwl_mvm_time_event_data *te_data;
	u32 uid;

	te_data = FUNC1(mvm);
	if (te_data)
		FUNC0(mvm, te_data, &uid);
}